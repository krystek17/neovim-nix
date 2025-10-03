{
  flake.modules.nixvim.ui = {
    plugins = {
      colorizer.enable = true;
      illuminate.enable = true;

      # TODO:
      indent-blankline = {
        enable = true;
        lazyLoad.settings.event = "DeferredUIEnter";
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
