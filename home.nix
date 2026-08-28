{ config, pkgs, ... }: {
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

  # Symlink ~/.config/nvim -> ~/dotfiles/nvim (mutable, edits track in git)
  home.file.".config/nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/nvim";
  };

  home.file.".config/herdr/config.toml" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/herdr/config.toml";
  };

  home.file.".claude/CLAUDE.md" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/agents.md";
  };
  
  home.sessionPath = [ "$HOME/.local/bin" ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      export PATH="$HOME/.local/bin:$PATH"
      eval "$(starship init zsh)"
      bindkey '^f' autosuggest-accept
    '';
    shellAliases = {
      g  = "git";
      gs = "git status";
      gd = "git diff";
      v  = "nvim";
      rebuild = "home-manager switch --flake ~/dotfiles#gowtham_k";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
}
