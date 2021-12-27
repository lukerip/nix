{ config, pkgs, ... }:

{
  programs.neovim.extraConfig = ''

    \" General.
    let mapleader = ","
    set number
    set relativenumber
    filetype plugin indent on
      
    \" Indentation.
    set smartindent
    set tabstop=2
    set expandtab
    set shiftwidth=2

    \" Visual.
    colorscheme gruvbox
    set background=dark
    syntax enable

    \" Rust.
    let g:rustfmt_autosave = 1
  '';
}
