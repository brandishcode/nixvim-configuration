{ pkgs, ... }:

let
  cpppackage = "clang-tools";
  cppformatter = "clang-format";
  cmakeformatter = "cmake-format";
in {
  extraPackages = [ pkgs.${cpppackage} pkgs.${cmakeformatter} ];
  plugins.conform-nvim = {
    formattersByFt = {
      cpp = [ cppformatter ];
      cmake = [ cmakeformatter ];
    };
  };
}
