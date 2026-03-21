{ inputs, ... }:
let
  inherit (import ./variables.nix)
    desktop videoDriver browser editor shell terminal;
in {
  imports = [
    # Hardware
    ./hardware-configuration.nix
    ../../hardware/${videoDriver}

    # Core
    ./host-packages.nix
    ../../stacks/core
    ../../stacks/desktop/${desktop}

    # Programs
    ../../stacks/programs/${browser}
    # ../../stacks/programs/${editor} (what ever will i do with this?)
    ../../stacks/programs/${shell}
    ../../stacks/programs/${terminal}
    ../../stacks/programs/discord
    ../../stacks/programs/mangohud
    ../../stacks/programs/neovim
    ../../stacks/programs/obs-studio
    ../../stacks/programs/steam
    ../../stacks/programs/vscode
  ];
}
