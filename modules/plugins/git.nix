{
  flake.modules.nixvim.git = {
    plugins = {
      gitsigns = {
        enable = true; # TODO: update shortcut
        lazyLoad.settings.event = "DeferredUIEnter";
      };

      neogit = {
        enable = true;
        settings.auto_refresh = true;
      };
    };
  };
}
