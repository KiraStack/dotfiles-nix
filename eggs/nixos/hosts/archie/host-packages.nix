{ pkgs, ... }:
{
  # Host-specific packages.
  # Edit as needed.
  environment.systemPackages = [
    pkgs.libc # iso c library
    pkgs.llvmPackages.lldb # debugger
    pkgs.nixfmt # nix formatter
  ];
}
