{
  plugins = {
    colorizer.enable = true;
    illuminate.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;

    noice = {
      enable = true;
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
}
