{
  flake.modules.nixvim.languages = {
    plugins.lsp.servers = {
      bashls.enable = true;
      gopls.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      ruff.enable = true;
      tailwindcss.enable = true;
      ts_ls.enable = true;
      yamlls.enable = true;
    };
  };
}
