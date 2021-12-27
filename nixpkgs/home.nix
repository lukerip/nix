{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.luke = { pkgs, ... }: {
    imports = [
      ./alacritty.nix
      ./i3.nix
      ./git.nix
      ./fish.nix
      ./python.nix
      ./bat.nix

      ./neovim/neovim.nix
    ];
    home.packages = with pkgs; [
      # Shell
      ripgrep
      fish
      fzf

      # Desktop apps.
      firefox

      nodejs
    ];
  };
}

