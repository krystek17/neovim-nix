{
  plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources = {
        formatting = {
          black.enable = true;
          hclfmt.enable = true;
          nixfmt.enable = true;
          opentofu_fmt.enable = true;

          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };

          stylua.enable = true;
          yamlfmt.enable = true;
        };
      };
    };
  };
}
