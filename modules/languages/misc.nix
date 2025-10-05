{
  flake.modules.nixvim.languages = {
    plugins.lsp.servers = {
      gopls.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
    };
  };
}
