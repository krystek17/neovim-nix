{ pkgs, ... }:

{
  plugins = {
    none-ls = {
      enable = true;
      enableLspFormat = true;

      sources = {
        code_actions = {
          gitsigns.enable = true;
          statix.enable = true;
        };

        diagnostics = {
          # pylint.enable = true;
          puppet_lint.enable = true;
          puppet_lint.package = pkgs.puppet-lint;
          statix.enable = true;
          trivy.enable = true;
        };

        formatting = {
          black.enable = true;
          hclfmt.enable = true;
          nixfmt.enable = true;
          opentofu_fmt.enable = true;
          puppet_lint.enable = true;
          puppet_lint.package = pkgs.puppet-lint;

          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };

          stylua.enable = true;
        };
      };
    };

    lint = {
      enable = true;

      lintersByFt = {
        ruff = [ "ruff" ];
        # terraform = [ "tflint" ];
        trivy = [ "trivy" ];
      };
    };
  };
}
