{
  plugins = {
    bufferline = {
      enable = true;
      lazyLoad.settings.event = "DeferredUIEnter";

      settings.options = {
        diagnostics = "nvim_lsp";
        separator_style = "slant";
      };
    };
  };
}
