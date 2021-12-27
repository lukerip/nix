{ config, pkgs, ... }:

{
  programs.neovim.extraConfig = ''
    let mapleader = ","

    \" General.
    set number
    set relativenumber
      
    \" Indentation.
    set smartindent
    set tabstop=2
    set expandtab
    set shiftwidth=2

    \" Colors
    colorscheme gruvbox
    set background=dark
  '';
}
