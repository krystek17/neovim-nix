{
  flake.modules.nixvim.telescope = {
    plugins = {
      telescope = {
        enable = true;
        lazyLoad.settings.cmd = [ "Telescope" ];
        extensions.ui-select = {
          enable = true;
          settings.specific_opts.codeactions = true;
        };
      };
    };
  };
}
