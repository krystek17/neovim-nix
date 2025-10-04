{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:
    {
      plugins = {
        lsp.servers.bashls = {
          enable = true;
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            bash = [
              "shellcheck"
              "shellharden"
              "shfmt"
            ];

            sh = [
              "shellcheck"
              "shellharden"
              "shfmt"
            ];
          };

          formatters = {
            shellcheck.command = lib.getExe pkgs.shellcheck;
            shellharden.command = lib.getExe pkgs.shellharden;
            shfmt.command = lib.getExe pkgs.shfmt;
          };
        };
      };
    };
}
