{ pkgs, ... }:

let nixformatter = "nixfmt";
in {
  extraPackages = [ pkgs.${nixformatter} ];
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = { timeoutMs = 500; };
    formattersByFt = { nix = [ nixformatter ]; };
  };
}
