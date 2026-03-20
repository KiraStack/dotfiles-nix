{ inputs, ... }:
{
  # Overlay custom derivations into nixpkgs so you can use pkgs.<name>
  # additions = self: super: import ./pkgs { pkgs = self; inherit hostname; };

  # Package overrides
  # See: https://wiki.nixos.org/wiki/Overlays
  modifications = self: super: {
    stable = import inputs.nixpkgs-stable {
      system = final.stdenv.hostPlatform.system;
      config.allowUnfree = true;
    };
    discord = super.discord.override {
      withVencord = true;
      withOpenASAR = true;
      enableAutoscroll = true;
    };
  };
}
