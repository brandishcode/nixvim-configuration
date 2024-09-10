{ pkgs, ... }:

let nixformatter = "nixfmt";
in {
  extraPackages = [ pkgs.${nixformatter} ];
  plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save = { timeoutMs = 500; };
      formatters_by_ft = { nix = [ nixformatter ]; };
    };
  };
}
