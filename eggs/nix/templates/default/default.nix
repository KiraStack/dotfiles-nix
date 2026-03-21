{ nixpkgs, system }:

let pkgs = import nixpkgs { inherit system; };
in pkgs.mkShell.override {
  # Override stdenv if needed
  # stdenv = pkgs.<name>;
} {
  packages = [ ];
  shellHook = "echo 'Hello, world!'";
}
