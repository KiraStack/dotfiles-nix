{ ... }:

{
  services = {
    # SSD trim
    fstrim = {
      enable = true;
    };

    # SSH server
    openssh = {
      enable = true;
      ports = [ 22 ];
      settings = {
        PasswordAuthentication = true;
        KbdInteractiveAuthentication = true;
        AllowUsers = null;
        UseDns = true;
        X11Forwarding = false; # disable remote X11 apps
        PermitRootLogin = "prohibit-password";
      };
    };

    # Bluetooth manager
    blueman = {
      enable = true;
    };

    # Display manager
    displayManager.ly = {
      enable = true;
    };

    # Audio
    pipewire.enable = false; # disable conflicting 'pkg'
    pulseaudio = {
      enable = true;
      support32Bit = true;
      extraConfig = "load-module module-combine-sink";
    };
  };
}
