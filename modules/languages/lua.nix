{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp.servers = {
          lua_ls = {
            enable = true;
            settings = {
              diagnostics = {
                globals = [ "hl" ];
              };
            };
          };
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            lua = [ "stylua" ];
          };

          formatters = {
            stylua.command = lib.getExe pkgs.stylua;
          };
        };
      };
    };
}
