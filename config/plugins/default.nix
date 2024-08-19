{
  imports = [ ./conform.nix ./fugitive.nix ./cmp.nix ./telescope ];

  plugins = {
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        marksman.enable = true;
      };
    };
    nvim-colorizer.enable = true;
  };
}
