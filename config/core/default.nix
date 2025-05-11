{ pkgs, ... }: {
  imports = [ ./autocmd.nix ./maps.nix ./options.nix ];

  viAlias = true;
  vimAlias = true;

  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };

  diagnostic.settings.virtual_lines.only_current_line = true;

  globals = {
    loaded_ruby_provider = 0; # Ruby
    loaded_perl_provider = 0; # Perl
    loaded_python_provider = 0; # Python 2
  };

  extraPackages = with pkgs; [ ansible-lint gcc xclip ];

  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
    vim-just
    vim-be-good

    # Required by terramate
    # vim-lsp
    # vim-terramate
  ];
}
