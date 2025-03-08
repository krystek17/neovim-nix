{
  plugins = {
    blink-cmp = {
      enable = true;
      setupLspCapabilities = true;
      # autoEnableSources = true;

      settings = {

        keymap = {
          preset = "super-tab";
          # "<Tab>" = [ "select_next" "fallback" ];
          # "<S-Tab>" = [ "select_prev" "fallback" ];
        };

        sources = {
          default = [ "lsp" "snippets" "path" "buffer" ];
          providers = {

          };
        };
      };
    };

    web-devicons.enable = true;
  };
}
