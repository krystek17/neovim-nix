{ inputs, ... }:
{
  flake.modules.nixvim.languages =
    { pkgs, ... }:
    let
      kcl = inputs.kcl-nix.default.${pkgs.stdenv.hostPlatform.system};
    in
    {
      filetype.extension.k = "kcl";

      plugins = {
        lsp.servers.kcl = {
          enable = true;
          package = kcl."language-server";
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            kcl = [ "kcl" ];
          };
        };

        lint = { };
      };
    };
}
