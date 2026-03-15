{
  flake.modules.nixvim.languages =

    {
      plugins = {
        lsp.servers = {
          gopls.enable = true;
        };
      };
    };
}
