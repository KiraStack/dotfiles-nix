{ inputs, hostname, pkgs, ... }:
let
  inherit (import ../../hosts/${hostname}/variables.nix)
    bluetoothSupport browser clock24h consoleKeymap desktop editor kbdLayout
    kbdVariant locale shell terminal timezone username videoDriver;
in {
  # Load home-manager
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  # Manage GNOME/GTK settings
  programs.dconf.enable = true;

  # Manage user configurations
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    overwriteBackup = true;
    backupFileExtension = "backup";

    # User session management
    users.${username} = {
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "26.05"; # nixOS version reference for upgrades.
        # sessionVariables = rec {};
      };
      programs.home-manager.enable = true; # let home-manager manage itself
      xdg.enable = true;
    };
  };

  # Set session variables
  environment.sessionVariables = rec {
    EDITOR =
      if (editor == "nixvim" || editor == "neovim" || editor == "nvchad") then
        "nvim"
      else if editor == "vscode" then
        "code"
      else
        "nano";
    VISUAL = EDITOR;
    BROWSER = "${browser}";
    TERMINAL = "${terminal}";
  };

  # Local user accounts
  users = {
    mutableUsers = true;
    users.${username} = {
      isNormalUser = true;
      description = "Personal user account";
      extraGroups = [
        # User privileges (via groups)
        "wheel" # sudo access
        "input"
        "networkmanager"
        "video"
        "audio"
        "libvirtd"
        "kvm"
        "docker"
        "disk"
        "adbusers"
        "lp"
        "scanner"
        "vboxusers" # virtual box
      ];
      shell = pkgs.${shell};
      createHome = true;
      initialPassword = ""; # use user-defined or hashed password
    };
  };

  # Nix defaults
  nix.settings.allowed-users = [ "${username}" ];
}
