{
  plugins = {
    neorg = {
      enable = true;
      settings.load = {
        "core.defaults" = { __empty = null; };
        "core.dirman" = {
          config = {
            workspaces = { home = "~/notes/home"; };
            index = "index.norg";
            default_workspace = "home";
          };
        };
        "core.concealer" = { config = { icon_preset = "diamond"; }; };
        "core.qol.todo_items" = {
          config = {
            order = {
              __raw =
                "{{'undone',' '},{'done', 'x'},{'pending', '-'},{'cancelled', '_'}}";
            };
            create_todo_parents = true;
          };
        };
      };
    };
  };

  extraFiles = {
    "ftplugin/norg.lua".text = ''
      vim.opt_local.conceallevel=2
      vim.g.maplocalleader = ","
      vim.keymap.set('n',
        '<localleader>c',
        ':lua require("neorg.core").modules.loaded_modules["core.qol.todo_items"].public["task-cycle"]()<Cr>',
        { desc = "Toggle todo item" }
      )
    '';
  };
}

