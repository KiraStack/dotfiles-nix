{ nixpkgs, system }:

let
  pkgs = import nixpkgs { inherit system; };
in
pkgs.mkShell {
  packages = with pkgs; [
    codespell # spell checker
    niv # dependency updater
    nixfmt-classic # Nix code formatter
    statix # static analysis
    vulnix # vulnerability scanner
  ];
}
