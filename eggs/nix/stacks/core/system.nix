{ hostname, ... }:
let
  inherit (import ../../hosts/${hostname}/variables.nix)
    timezone
    locale # system locale
    desktop
    terminal
    editor
    browser
    videoDriver # GPU driver
    kbdLayout
    kbdVariant
    consoleKeymap
    bluetoothSupport
    ;
in
{
  # X11 configuration
  services.xserver = {
    enable = true;
    xkb.layout = "${kbdLayout}";
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
  };

  # Locale
  time.timeZone = "${timezone}";
  i18n.defaultLocale = "${locale}";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "${locale}";
    LC_IDENTIFICATION = "${locale}";
    LC_MEASUREMENT = "${locale}";
    LC_MONETARY = "${locale}";
    LC_NAME = "${locale}";
    LC_NUMERIC = "${locale}";
    LC_PAPER = "${locale}";
    LC_TELEPHONE = "${locale}";
    LC_TIME = "${locale}";
  };

  # GnuPG agent
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Session variables
  environment.variables = rec {
    # XDG directories
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";
    XDG_BIN_HOME = "$HOME/.local/bin";

    # Package managers
    CARGO_BIN_PATH = "$HOME/.cargo/bin";
    PNPM_BIN = "$HOME/.local/share/pnpm";

    # Binaries
    PATH = [
      "${XDG_BIN_HOME}"
      "${CARGO_BIN_PATH}"
      "${PNPM_BIN}"
      "$HOME/.emacs.d/bin"
    ];
  };

  # Shell aliases
  environment.shellAliases = {
    "grep" = "grep --color=auto";

    # Files
    "l" = "ls -CF --color=auto --group-directories-first";
    "la" = "ls -AF --color=auto --group-directories-first";
    "ll" = "ls -alF --color=auto --group-directories-first";

    # Git
    "gs" = "git status";
    "gd" = "git diff";
    "gl" = "git log --oneline --graph --decorate";

    # System
    "nix-collect" = "sudo nix-collect-garbage -d";
    "nix-optimise" = "nix-store --optimise";
    "nix-prune" = "rm -rf '$HOME/.cache/'* '$HOME/.local/state/tmp/'* /tmp/*"; # remove temporary and cache files
    "nix-rebuild" = "sudo nixos-rebuild switch --flake /etc/nixos#$(hostname)";
    "nix-rebuild-rollback" = "sudo nixos-rebuild switch --rollback";
    "nix-store-ls" = "nix-store -qR";
    "nix-update" = "sudo nix flake update nixpkgs --flake /etc/nixos";

    # Templates
    "nix-default" = "nix develop /etc/nixos/templates#default";
    "nix-c-cpp" = "nix develop /etc/nixos/templates#c-cpp";
    "nix-nix" = "nix develop /etc/nixos/templates#nix";
    "nix-python" = "nix develop /etc/nixos/templates#python";
    "nix-rust" = "nix develop /etc/nixos/templates#rust";

    # Safe file cleanup
    "trash" = ''
      mkdir -p "$HOME/.local/share/Trash/files"
      for f in "$@"; do
        mv "$f" "$HOME/.local/share/Trash/files/"
      done
    '';
  };

  # Package management
  nix = {
    settings.auto-optimise-store = true;
    settings.allowed-users = [ "archie" ];
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
  };

  system.stateVersion = "26.05"; # system version reference for upgrades.
}
