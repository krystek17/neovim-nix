{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp.servers = {
          yamlls.enable = true;
        };

        lint = {
          lintersByFt = {
            yaml = [ "yamllint" ];
          };

          linters = {
            yamllint.cmd = lib.getExe pkgs.yamllint;
          };
        };
      };
    };
}
