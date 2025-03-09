{ pkgs, ... }:

let javaformatter = "google-java-format";
in {
  extraPackages = with pkgs; [ maven pkgs.${javaformatter} ];
  plugins.nvim-jdtls = {
    enable = true;
    data = { __raw = "vim.fn.expand('$HOME/.cache/jdtls/workspace')"; };
    rootDir = {

      __raw = "require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})";
    };
  };
  plugins.conform-nvim = {
    settings.formatters_by_ft = { java = [ javaformatter ]; };
  };
}
