{
  flake.modules.nixvim.git = {
    plugins = {
      gitsigns = {
        enable = true;
        lazyLoad.settings.event = "DeferredUIEnter";
      };

      neogit = {
        enable = true;
        settings.auto_refresh = true;
      };

      which-key.settings.spec = [
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
        }
      ];
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>gg";
        action = "<cmd>Neogit<CR>";
        options = {
          silent = true;
          desc = "Neogit";
        };
      }
      {
        mode = "n";
        key = "<leader>gb";
        action = "<cmd>Gitsigns blame_line<CR>";
        options = {
          silent = true;
          desc = "Blame Line";
        };
      }
    ];
  };
}
