{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ansiblels.enable = true;
        #bashls.enable = true;
        gopls.enable = true;
        jsonls.enable = true;
        lua-ls.enable = true;
        marksman.enable = true;
        nil-ls.enable = true;
        nixd.enable = true;
        pyright.enable = true;
        tailwindcss.enable = true;
        terraformls.enable = true;
        tsserver.enable = true;
        yamlls.enable = true;
      };

      keymaps = {
        diagnostic = { "<A-d>" = "open_float"; };

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
    lsp-lines = {
      enable = true;
      currentLine = true;
    };

    luasnip = {
      enable = true;
      fromVscode = [{ lazyLoad = true; }];
    };
  };
}
