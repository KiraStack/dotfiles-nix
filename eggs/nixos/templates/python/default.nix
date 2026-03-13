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
    packages = with pkgs; [
      black # code formatter
      codespell # spell checker
      pip # python package manager
      pyright # type checker
      venvShellHook # python venv setup
    ];
    shellHook = ''
      echo "Hello, world!"
    '';
  }
