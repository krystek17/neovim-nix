{
  flake.modules.nixvim.core = {
    plugins = {
      cmp = {
        enable = true;
        autoEnableSources = true;

        settings = {
          mapping = {
            "<CR>" = "cmp.mapping.confirm({ select = true })";
            "<C-k>" = "cmp.mapping.select_prev_item()";
            "<C-j>" = "cmp.mapping.select_next_item()";
            "<C-b>" = "cmp.mapping.close()";

            "<Tab>" = ''
              cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif require("luasnip").expand_or_locally_jumpable() then
                    require("luasnip").expand_or_jump()
                  else
                    fallback()
                  end
                end,
                { 'i', 's' }
              )
            '';

            "<S-Tab>" = ''
              cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_prev_item()
                  elseif require("luasnip").jumpable(-1) then
                    require("luasnip").jump(-1)
                  else
                    fallback()
                  end
                end,
                { 'i', 's' }
              )
            '';
          };

          snippet.expand = ''
            function(args) require('luasnip').lsp_expand(args.body) end
          '';

          sources = [
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
            { name = "path"; }
            {
              name = "buffer";
              # Suggest words from other open buffers
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
          ];
        };
      };

      cmp-nvim-lsp.enable = true;
      friendly-snippets.enable = true;
      web-devicons.enable = true;
    };
  };
}
