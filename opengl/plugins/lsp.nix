{ pkgs, ... }:

{
  extraPackages = with pkgs; [ glsl_analyzer ];
  extraConfigLua = with pkgs; ''
    vim.filetype.add({
      extension = {
        vert = "vert",
        frag = "frag"
      }
    })
    require("lspconfig").glsl_analyzer.setup({
      cmd = { "${glsl_analyzer}/bin/glsl_analyzer" }
    })
  '';
}
