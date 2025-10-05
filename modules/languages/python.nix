{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp.servers = {
          ruff.enable = true;
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            python = [ "black" ];
          };

          formatters = {
            black.command = lib.getExe pkgs.black;
          };
        };
      };
    };
}
