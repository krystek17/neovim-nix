{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:
    {
      plugins = {
        lsp.servers.bashls = {
          enable = true;
        };

        conform-nvim.settings = {
          formatters_by_ft = lib.genAttrs [ "bash" "sh" ] (_: [ "shfmt" ]);

          formatters = {
            shfmt.command = lib.getExe pkgs.shfmt;
          };
        };

        lint = {
          lintersByFt = {
            bash = [
              "shellcheck"
            ];
          };

          linters = {
            shellcheck.cmd = lib.getExe pkgs.shellcheck;
          };
        };
      };
    };
}
