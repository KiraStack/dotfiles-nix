{ ... }:
{
  boot = {
    tmp = {
      cleanOnBoot = true;
    };
    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
      };
      efi.canTouchEfiVariables = true;
      timeout = 5; # old: null (to keep bootloader until selection)
    };
  };
}
