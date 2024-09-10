{ pkgs, ... }:

let
  cpppackage = "clang-tools";
  cppformatter = "clang-format";
  cmakeformatter = "cmake-format";
in {
  extraPackages = [ pkgs.${cpppackage} pkgs.${cmakeformatter} ];
  plugins.conform-nvim = {
    settings.formatters_by_ft = {
      cpp = [ cppformatter ];
      cmake = [ cmakeformatter ];
    };
  };
}
