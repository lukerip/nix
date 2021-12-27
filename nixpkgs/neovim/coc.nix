{ config, pkgs, ... }:

{
  programs.neovim.coc = {
    enable = true;
    settings = {
      languageserver = {
        rust-analyzer = {
          enable = true;
          rootPatterns = [
            "Cargo.toml"
            "Cargo.lock"
            ".git/"
            ".hg/"
          ];
          filetypes = [ "rs" ];
        };
      };
    };
  };
}
