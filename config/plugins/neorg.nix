{
  plugins = {
    neorg = {
      enable = true;
      settings.load = {
        "core.defaults" = { __empty = null; };
        "core.dirman" = {
          config = { workspaces = { home = "~/notes/home"; }; };
        };
        "core.concealer" = { icon_preset = "diamond"; };
      };
    };
  };
}

