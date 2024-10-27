{
  imports = [
    ./conform.nix
    ./fugitive.nix
    ./cmp.nix
    ./telescope
    ./undotree.nix
    ./treesitter.nix
    ./neorg.nix
  ];

  plugins = {
    web-devicons.enable = true;
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
