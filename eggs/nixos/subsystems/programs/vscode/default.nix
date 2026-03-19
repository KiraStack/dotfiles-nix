{ lib, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions =
      with pkgs.vscode-extensions;
      [
        eamodio.gitlens # git tracking
        jnoortheen.nix-ide
        kilocode.kilo-code # ai assistant
        ms-vscode.cpptools
        ms-vscode.live-server # local server
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "remote-ssh-edit";
          publisher = "ms-vscode-remote";
          version = "0.47.2";
          sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g"; # old: lib.fakeSha256;
        }
        {
          name = "jetbrains-file-icon-theme";
          publisher = "fogio";
          version = "1.3.1";
          sha256 = "6hKEcfjfNVbdjfdyUxwQJ7Ap9pM0JYB1UVQoBtydLlI=";
        }
        {
          name = "vsc-discord-rpc";
          publisher = "ChakornK";
          version = "0.0.3";
          sha256 = "aBVN96Q9l+zjUtm4GDq/SnwGt1AfJZHIe0WG8Ag3rGM=";
        }
      ];
  };
}
