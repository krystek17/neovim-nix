{
  flake.modules.nixvim.core = {
    plugins = {
      lsp = {
        enable = true;

        keymaps = {
          diagnostic = {
            "<A-d>" = {
              action = "open_float";
              desc = "Show diagnostics";
            };
          };

          lspBuf = {
            K = "hover";
            gd = "definition";
            gr = "references";
            "<A-a>" = "code_action";
          };
        };
      };
    };
  };
}
