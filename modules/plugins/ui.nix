{
  flake.modules.nixvim.ui = {
    plugins = {
      colorizer.enable = true;
      illuminate.enable = true;

      indent-blankline = {
        enable = true;
        lazyLoad.settings.event = "DeferredUIEnter";

        luaConfig.pre = ''
          local hooks = require("ibl.hooks")
          hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
          end)
        '';

        settings = {
          scope = {
            enabled = true;
            show_start = true;
          };

          indent.highlight = [
            "RainbowRed"
            "RainbowYellow"
            "RainbowBlue"
            "RainbowOrange"
            "RainbowGreen"
            "RainbowViolet"
            "RainbowCyan"
          ];
        };
      };

      lualine = {
        enable = true;
        lazyLoad.settings.event = "DeferredUIEnter";
      };

      noice = {
        enable = true;
        lazyLoad.settings.event = "DeferredUIEnter";

        settings = {
          cmdline = {
            enabled = true;
            view = "cmdline_popup";
          };

          notify = {
            enabled = true;
            view = "notify";
          };

          popupmenu.enabled = true;
        };
      };

      notify.enable = true;
      nvim-autopairs.enable = true;
    };
  };
}
