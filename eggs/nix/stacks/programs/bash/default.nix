{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    completion = {
      enable = true;
      package = pkgs.bash-completion;
    };
    promptInit = ''
      # Set prompt if terminal allows
      if [ "$TERM" != "dumb" ] || [ -n "$INSIDE_EMACS" ]; then
        PS1="\w > "

        # Append tty title if applicable
        if [ "$TERM" = "xterm" ]; then
          PS1="\[\033]2;\h:\u:\w\007\]$PS1"
        fi
      fi
    '';
    # promptPluginInit = "";
  };
}
