{ nixpkgs, system }:

let pkgs = import nixpkgs { inherit system; };
in pkgs.mkShell {
  packages = with pkgs; [
    python313 # interpreter
    black # code formatter
    codespell # spell checker
    python313Packages.pip # package manager
    pyright # type checker
    python313Packages.venvShellHook # venv setup
  ];
}
