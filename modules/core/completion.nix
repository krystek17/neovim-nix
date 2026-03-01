{
  flake.modules.nixvim.core =
    { pkgs, ... }:
    {
      plugins = {
        blink-cmp = {
          enable = true;

          settings = {
            cmdline.completion.menu.auto_show = true;

            keymap = {
              preset = "none";
              "<CR>" = [
                "accept"
                "fallback"
              ];
              "<C-k>" = [
                "select_prev"
                "fallback"
              ];
              "<C-j>" = [
                "select_next"
                "fallback"
              ];
              "<C-b>" = [
                "cancel"
                "fallback"
              ];
              "<Tab>" = [
                "snippet_forward"
                "select_next"
                "fallback"
              ];
              "<S-Tab>" = [
                "snippet_backward"
                "select_prev"
                "fallback"
              ];
            };

            sources = {
              default = [
                "lsp"
                "path"
                "snippets"
                "buffer"
              ];
              providers.snippets.opts.search_paths = [
                "${pkgs.vimPlugins.friendly-snippets}"
              ];
            };

            completion = {
              keyword.range = "full";
              documentation.auto_show = true;
              ghost_text.enabled = true;
            };

            signature = {
              enabled = true;
              window.border = "rounded";
            };
          };
        };

        web-devicons.enable = true;
      };
    };
}
