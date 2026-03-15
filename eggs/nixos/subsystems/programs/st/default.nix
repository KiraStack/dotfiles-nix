{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.st.overrideAttrs (oldAttrs: rec {
      # Ligatures dependency
      buildInputs = oldAttrs.buildInputs ++ [ pkgs.harfbuzz ];
      patches = [
        # Fetch global patches directly from `st.suckless.org`
        (pkgs.fetchpatch {
          url = "https://st.suckless.org/patches/ligatures/0.8.3/st-ligatures-20200430-0.8.3.diff";
          sha256 = "vKiYU0Va/iSLhhT9IoUHGd62xRD/XtDDjK+08rSm1KE=";
        })
        (pkgs.fetchpatch {
          url = "https://st.suckless.org/patches/clipboard/st-clipboard-0.8.3.diff";
          sha256 = "1h1nwilwws02h2lnxzmrzr69lyh6pwsym21hvalp9kmbacwy6p0g";
        })
      ];
      # Using a local file
      configFile = pkgs.writeText "config.def.h" (builtins.readFile ./config.h);
      postPatch = (oldAttrs.postPatch or "") + "\ncp ${configFile} config.def.h";
    }))
  ];
}
