{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "mutualex";
    userEmail = "luke@luke.rip";

    # ignore home and vim swap files.
    ignores = [ "*~" "*.swp" ];
  };
}
