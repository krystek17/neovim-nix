{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:

    {
      plugins = {
        lsp.servers = {
          gopls.enable = true;
        };

        # lint = {
        #   lintersByFt = {
        #     go = [ "golangcilint" ];
        #   };
        #
        #   linters = {
        #     golangcilint.cmd = lib.getExe pkgs.golangci-lint;
        # };
        # };
      };
    };
}
