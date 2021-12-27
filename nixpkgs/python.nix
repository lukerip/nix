{ config, lib, pkgs, ... }:

{
  home.packages = with pkgs; [
    (
      let
        base-python-packages = python-packages: with python-packages; [
          pandas
          requests
        ];
        base-python = python3.withPackages base-python-packages;
      in
      base-python
    )
  ];
}
