{ nixpkgs, system }:

let
  pkgs = import nixpkgs { inherit system; };
in
pkgs.mkShell.override
  {
    # Override stdenv if needed
    # stdenv = pkgs.clangStdenv;
  }
  {
    packages = [ pkgs.codespell ];
    shellHook = ''
      echo "Hello, world!"
    '';
  }
