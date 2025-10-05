{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp.servers = {
          jsonls.enable = true;
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            json = [
              "jq"
            ];
          };

          formatters.jq.command = lib.getExe pkgs.jq;
        };

        lint = {
          lintersByFt = {
            json = [ "jsonlint" ];
          };

          linters = {
            jsonlint.cmd = lib.getExe pkgs.nodePackages.jsonlint;
          };
        };
      };
    };
}
