{ config, pkgs, ... }:

{
  programs.neovim.plugins = with pkgs.vimPlugins; [
    vim-nix
    fzf-vim
    {
      plugin = The_NERD_Commenter;
      config = "let NERDSpaceDelims=1";
    }
    coc-nvim
    coc-rust-analyzer
    coc-rls
    coc-python
    gruvbox
  ];
}
