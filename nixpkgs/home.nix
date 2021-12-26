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
    ];
    home.packages = with pkgs; [
      neovim
      fish
      firefox
    ];
  };
}

