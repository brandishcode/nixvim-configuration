{ pkgs, ... }:

let nixformatter = "nixfmt";
in {
  extraPackages = [ pkgs.${nixformatter} ];
  plugins.conform-nvim = {
    enable = true;
    formattersByFt = { nix = [ nixformatter ]; };
    settings = { format_on_save = { timeoutMs = 500; }; };
  };
}
