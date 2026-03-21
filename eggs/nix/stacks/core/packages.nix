{ pkgs, lib, ... }:
{
  # NixOS package configurations
  nixpkgs.config = {
    allowUnfree = true;
    nixpkgs.config.allowUnfreePredicate =
      pkg:
      builtins.elem (lib.getName pkg) [
        "steam"
        "steam-original"
        "steam-unwrapped"
        "steam-run"
      ];
    pulseaudio = true;
  };

  # Packages
  environment.systemPackages = with pkgs; [
    # System
    curl # http client
    # file-roller # archive manager
    gnutar # archive extraction and creation (tarballs, .tar.gz, etc.)
    herbe # notifications
    htop # process viewer
    lf # file manager
    ripgrep # search tool
    tree # directory tree viewer
    unzip # extract .zip archives
    wget # http downloader

    # Development
    git
    notepad-next

    # Clipboard
    maim # screenshot tool
    slop # screen selector
    xclip # clip tool

    # Media
    ani-cli # anime
    cava # audio display
    mpv # media player
    playerctl # media control

    # Graphics
    eww # widget system
    hsetroot # wallpaper setter
    rofi # application launcher
    rofimoji # character picker
    xdg-desktop-portal # portal backend
    xdg-desktop-portal-gnome
    xdg-utils # desktop integration tools
  ];

  # XDG settings and MIME applications
  xdg = {
    # Inter-process communication services
    portal = {
      enable = true;
      config.common.default = "*";
      extraPortals = with pkgs; [
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
      ];
    };

    # Default applications for files and links
    mime.defaultApplications = {
      # Links
      "x-scheme-handler/http" = "firefox.desktop";
      "x-scheme-handler/https" = "firefox.desktop";
      "x-scheme-handler/ftp" = "firefox.desktop";
      "x-scheme-handler/mailto" = "firefox.desktop";
      "x-scheme-handler/discord" = "vesktop.desktop";

      # Files
      "text/plain" = "nvim.desktop";
      "text/html" = "firefox.desktop";
      "text/pdf" = "firefox.desktop";
      "image/*" = "mpv.desktop";
      "audio/*" = "cmus.desktop"; # "mpv.desktop";
      "video/*" = "mpv.desktop";
      "application/zip" = "file-roller.desktop";
    };
  };
}
