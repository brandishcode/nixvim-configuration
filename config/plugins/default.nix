{
  imports =
    [ ./conform.nix ./fugitive.nix ./cmp.nix ./telescope ./undotree.nix ];

  plugins = {
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        marksman.enable = true;
      };
    };
    nvim-colorizer.enable = true;
    transparent.enable = true;
  };
}
