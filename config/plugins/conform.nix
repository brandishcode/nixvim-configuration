{ pkgs, ... }:

let
  nixformatter = "nixfmt";
  luaformatter = "luaformatter";
in {
  extraPackages = [ pkgs.${nixformatter} pkgs.${luaformatter} ];
  plugins.conform-nvim = {
    enable = true;

    settings = {
      format_on_save = { timeoutMs = 500; };
      formatters_by_ft = {
        nix = [ nixformatter ];
        lua = [ luaformatter ];
      };
    };
  };
}
