{ config, pkgs, ... }:

{
  imports = [
    ./plugins.nix
    ./coc.nix
    ./config.nix
  ];

  programs.neovim = {
    enable = true;
    withPython3 = true;
  };
}
