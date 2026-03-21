{
  description = "A simple flake for templates";
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };
  outputs = { self, nixpkgs, ... }@inputs:
    let
      # Supported systems
      systems =
        [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];

      # Generate system-specific attributes
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in {
      devShells = forAllSystems (system: rec {
        args = { inherit system nixpkgs; };
        c-cpp = import ./c-cpp args;
        default = import ./default args;
        nix = import ./nix args;
        python = import ./python args;
        rust = import ./rust args;

        # Aliases (e.g. `empty = default`) ...
      });
    };
}
