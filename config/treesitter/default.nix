{ config, ... }: {
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;

      grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
        bash
        c
        comment
        css
        fish
        go
        gomod
        gosum
        gowork
        hcl
        hjson
        html
        json
        just
        lua
        markdown
        markdown_inline
        nix
        puppet
        python
        regex
        requirements
        scss
        terraform
        toml
        vim
        vimdoc
        yaml
      ];

      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
  };
}
