{
  flake.modules.nixvim.telescope = {
    plugins.telescope = {
      enable = true;
      lazyLoad.settings.cmd = [ "Telescope" ];
      extensions.ui-select = {
        enable = true;
        settings.specific_opts.codeactions = true;
      };
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>b";
        action = "<cmd>Telescope buffers<CR>";
        options = {
          silent = true;
          desc = "Buffers";
        };
      }
      {
        mode = "n";
        key = "<leader>s";
        action = "<cmd>Telescope find_files hidden=true<CR>";
        options = {
          silent = true;
          desc = "Search Files";
        };
      }
      {
        mode = "n";
        key = "<leader>f";
        action = "<cmd>Telescope live_grep<CR>";
        options = {
          silent = true;
          desc = "Grep";
        };
      }
      {
        mode = "n";
        key = "<leader>r";
        action = "<cmd>Telescope registers<CR>";
        options = {
          silent = true;
          desc = "Registers";
        };
      }
      {
        mode = "n";
        key = "<C-p>";
        action = "<cmd>Telescope oldfiles<CR>";
        options.silent = true;
      }
    ];
  };
}
