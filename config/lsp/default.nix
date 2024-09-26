{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ansiblels.enable = true;
        bashls.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        lua-ls.enable = true;
        marksman.enable = true;
        nil-ls.enable = true;

        nixd = {
          enable = true;
          settings.diagnostic = {
            suppress = [ "sema-escaping-with" "var-bind-to-this" ];
          };
        };

        pyright.enable = true;
        tailwindcss.enable = true;

        # FIXME: provider auto complete not working
        terraformls = {
          enable = true;
          # filetypes = [ "terraform" "terraform-vars" "tf.tmgen" ]; # FIXME:
        };

        ts-ls.enable = true;
        yamlls.enable = true;
      };

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
      cmp = {
        menu = {
          buffer = "[Buffer]";
          nvim_lsp = "[LSP]";
          luasnip = "[LuaSnip]";
          nvim_lua = "[Lua]";
        };
      };
    };

    lsp-lines.enable = true;

    luasnip = {
      enable = true;
      fromVscode = [{ lazyLoad = true; }];
    };
  };
}
