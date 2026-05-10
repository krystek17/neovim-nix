{
  flake.modules.nixvim.languages =
    { pkgs, ... }:

    {
      filetype.extension.k = "kcl";

      plugins = {
        lsp.servers.kcl = {
          enable = true;
          package = pkgs.kcl-language-server;
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            kcl = [ "kcl" ];
          };
        };
      };
    };
}
