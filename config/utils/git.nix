{
  plugins = {
    gitsigns = {
      enable = true; # TODO: shortcut
      lazyLoad.settings.event = "DeferredUIEnter";
    };

    neogit = {
      enable = true;
      settings.auto_refresh = true;
    };
  };
}
