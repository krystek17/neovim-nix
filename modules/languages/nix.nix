{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:
    {
      plugins = {
        lsp.servers = {
          nil_ls.enable = true;

          nixd = {
            enable = true;
            settings.diagnostic = {
              suppress = [
                "sema-escaping-with"
                "var-bind-to-this"
              ];
            };
          };
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            nix = [
              "nixfmt"
            ];
          };

          formatters.nixfmt.command = lib.getExe pkgs.nixfmt-rfc-style;
        };
      };
    };
}
