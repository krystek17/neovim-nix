{
  flake.modules.nixvim.core =
    { pkgs, ... }:
    {

      viAlias = true;
      vimAlias = true;

      colorschemes.tokyonight = {
        enable = true;
        settings.style = "night";
      };

      globals = {
        loaded_ruby_provider = 0; # Ruby
        loaded_perl_provider = 0; # Perl
        loaded_python_provider = 0; # Python 2
        mapleader = " ";

        # Disable netrw (using nvim-tree instead)
        loaded_netrw = 1;
        loaded_netrwPlugin = 1;
      };

      extraPackages = with pkgs; [
        ansible-lint
        gcc
        xclip
      ];

      extraPlugins = with pkgs.vimPlugins; [
        ansible-vim
        vim-just
        vim-be-good

        # Required by terramate
        # vim-lsp
        # vim-terramate
      ];
    };
}
