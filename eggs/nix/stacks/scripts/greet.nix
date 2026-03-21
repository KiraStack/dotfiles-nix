let
  pkgs = import
    (fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-unstable") {
      config = { };
      overlays = [
        (self: super: {
          script = super.writeTextFile {
            name = "script";
            text = ''
              #! ${super.runtimeShell}
              echo "Hello, $USER!"
            '';
            executable = true;
            destination = "/bin/script";
          };
        })
      ];
    };
in pkgs.mkShellNoCC {
  packages = [ pkgs.script ];
  shellHook = "script";
}
