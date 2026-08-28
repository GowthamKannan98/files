{ pkgs, ... }: {
  home.username = "gowtham_k";
  home.homeDirectory = "/home/gowtham_k";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    neovim
    git
    starship
    ripgrep
    fzf
    tmux
    nodejs_22
  ];

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      eval "$(starship init zsh)"
      bindkey '^f' autosuggest-accept
    '';
    shellAliases = {
      g  = "git";
      gs = "git status";
      gd = "git diff";
      v  = "nvim";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
