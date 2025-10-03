{
  flake.modules.nixvim.languages = {
    plugins.lsp.servers = {
      nil_ls.enable = true;

      nixd = {
        enable = true;
        settings.diagnostic = {
          suppress = [ "sema-escaping-with" "var-bind-to-this" ];
        };
      };
    };
  };
}
