{
  flake.modules.nixvim.format = {
    plugins.conform-nvim = {
      enable = true;

      lazyLoad.settings = {
        cmd = [ "ConformInfo" ];
        event = [ "BufWritePre" ];
      };

      luaConfig.pre = ''
        local slow_format_filetypes = {}
      '';

      settings = {
        # Use LSP formatting if no formatters are available for the filetype.
        default_format_opts = {
          lsp_format = "fallback";
        };

        # Runs SYNCHRONOUSLY before the file is written to disk (BufWritePre).
        format_on_save = /* Lua */ ''
          -- Skip formatting if the user has disabled it globally or per-buffer
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            -- Disable autoformat for slow filetypes
            if slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            -- If the formatter timed out, mark this filetype as "slow" so future saves use async formatting instead of blocking
            local function on_format(err)
              if err and err:match("timeout$") then
                slow_format_filetypes[vim.bo[bufnr].filetype] = true
              end
            end

            return { timeout_ms = 200, lsp_format = "fallback" }, on_format
          end
        '';

        # Runs ASYNCHRONOUSLY after the file is written to disk (BufWritePost).
        format_after_save = /* Lua */ ''
          function(bufnr)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
              return
            end

            if not slow_format_filetypes[vim.bo[bufnr].filetype] then
              return
            end

            return { lsp_format = "fallback" }
          end
        '';
      };
    };
  };
}
