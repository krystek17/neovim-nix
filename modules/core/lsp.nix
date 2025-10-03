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

      lsp-format.enable = true;

      lspkind = {
        enable = true;
        settings = {
          cmp = {
            menu = {
              buffer = "[Buffer]";
              nvim_lsp = "[LSP]";
              luasnip = "[LuaSnip]";
              nvim_lua = "[Lua]";
            };
          };
        };
      };

      lsp-lines.enable = true;

      luasnip = {
        enable = true;
        fromVscode = [{ lazyLoad = true; }];
      };
    };
  };
}
