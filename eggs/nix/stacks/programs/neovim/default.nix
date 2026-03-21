{ ... }: {
  # Use neovim
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Set session variables
  environment.sessionVariables = rec {
    # EDITOR = "nvim"; # set in other file
    # VISUAL = "nvim";
    MANPAGER = "nvim +Man!";
  };
}

# Consider using Nixvim:
# ```nix
# let
#   nvim = nixvim.legacyPackages.x86_64-linux.makeNixvim {
#     plugins = {};
#   };
# in pkgs.mkShell {
#   buildInputs = [nvim];
# };
# ```
