{ config, pkgs, ... }:
let
  ruststable = (pkgs.rust-bin.stable.latest.default.override {
    extensions = [
      "rust-src"
      "rust-analyzer-preview"
      "rust-analysis"
      "rustfmt-preview"
    ];
  });
  rustnightly = (pkgs.rust-bin.nightly.latest.default.override {
    extensions = [
      "rust-src"
      "rust-analyzer-preview"
      "rust-analysis"
      "rustfmt-preview"
    ];
  });
in
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
