{

  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;

    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };

      diagnostics = {
        # pylint.enable = true;
        statix.enable = true;
        trivy.enable = true;
      };

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
      };
    };
  };

}
