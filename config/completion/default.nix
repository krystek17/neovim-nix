{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        snippet.expand =
          "function(args) require('luasnip').lsp_expand(args.body) end";

        sources = [
          { name = "nvim_lsp"; }
          { name = "luasnip"; }
          { name = "path"; }
          { name = "buffer"; }
          {
            name = "buffer";
            # Words from other open buffers can also be suggested.
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
          }
        ];

        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-b>" = "cmp.mapping.close()";
        };
      };
    };

    web-devicons.enable = true;
  };
}
