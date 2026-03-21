{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.libc
    pkgs.llvmPackages.lldb
  ];
}
