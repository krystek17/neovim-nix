{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp = {
          servers = {
            helm_ls.enable = true;
            yamlls.enable = true;
          };
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
