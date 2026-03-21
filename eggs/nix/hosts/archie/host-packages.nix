{ pkgs, ... }:
{
  environment.systemPackages = [
    # nix
    pkgs.nixfmt

    # iso c / cpp
    pkgs.libc
    pkgs.llvmPackages.lldb
  ];
}
