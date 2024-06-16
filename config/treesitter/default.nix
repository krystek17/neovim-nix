{ config, ... }: {
  plugins = {
    treesitter = {
      enable = true;
      indent = true;
      nixvimInjections = true;
      nixGrammars = true;

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
        jsonnet
        lua
        markdown
        markdown_inline
        nix
        python
        regex
        requirements
        scss
        terraform
        toml
        vim
        vimdoc
        yaml
        yuck
      ];
    };
  };
}
