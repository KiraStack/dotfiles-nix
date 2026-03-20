{ pkgs, ... }:
{
  services = {
    xserver.windowManager.bspwm = {
      enable = true;
    };
    picom = {
      enable = true;
    };
  };
  environment.systemPackages = [ pkgs.sxhkd ];
}
