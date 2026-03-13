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
      cargo-audit # security audit for dependencies
      clippy # linter for Rust
      rust-analyzer # IDE language server
      rustfmt # code formatter
      rustup # Rust toolchain manager
      sccache # caching compiler builds
    ];
    shellHook = ''
      echo "Hello, world!"

      # Install nightly toolchain
      rustup toolchain install nightly
      rustup default nightly

      # Check for yolk-dependent files (if so, install yolk)
      if [ -f ./yolk.rhai ]; then
        echo "Configuration file `yolk.rhai` found; deploying `yolk_dots`."
        cargo install --force yolk_dots
      fi
    '';
  }
