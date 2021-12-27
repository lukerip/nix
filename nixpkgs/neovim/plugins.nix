{ config, pkgs, ... }:

let
  copilot = pkgs.vimUtils.buildVimPlugin {
    name = "copilot";
    src = pkgs.fetchFromGitHub {
      owner = "github";
      repo = "copilot";
      rev = "c01314840b94da0b9767b52f8a4bbc579214e509";
      sha256 = "10vw2hjrg20i8id5wld8c5b1m96fnxvkb5qhbdf9w5sagawn4wc2";
    };
  };
in
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
    copilot
  ];
}
