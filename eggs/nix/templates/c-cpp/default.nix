{ nixpkgs, system }:

let
  pkgs = import nixpkgs { inherit system; };
in
pkgs.mkShell.override
  {
    stdenv = pkgs.clangStdenv;
  }
  {
    packages =
      with pkgs;
      [
        cmake # build system
        clang # compiler
        codespell # spell checker
        cppcheck # static analysis
        gcc # compiler
        gnumake # make tool
        libc # c headers
        vcpkg # package manager
      ]
      ++ (if system != "aarch64-darwin" then [ gdb ] else [ ]); # GDB excluded on Apple Silicon
  }
