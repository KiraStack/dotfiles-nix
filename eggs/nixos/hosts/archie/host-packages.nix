{ pkgs, ... }:
{
  # Host-specific packages.
  # Edit as needed.
  environment.systemPackages = with pkgs; [
    gcc
    glibc
    # gcc-c++
    libc
    clang-tools
    gnumake
    cmake
  ];
}
