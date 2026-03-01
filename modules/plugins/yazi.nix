{
  flake.modules.nixvim.yazi = {
    plugins = {
      yazi = {
        enable = true;
        lazyLoad.settings.cmd = [ "Yazi" ];
      };
      which-key.settings.spec = [
        {
          __unkeyed-1 = "<leader>e";
          icon = "󰪶";
        }
        {
          __unkeyed-1 = "<leader>E";
          icon = "󰪶";
        }
      ];
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>Yazi<CR>";
        options = {
          silent = true;
          desc = "Yazi (current file)";
        };
      }
      {
        mode = "n";
        key = "<leader>E";
        action = "<cmd>Yazi toggle<CR>";
        options = {
          silent = true;
          desc = "Yazi (resume)";
        };
      }
    ];
  };
}
