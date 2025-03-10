{ pkgs, ... }: {
  imports = [ ./autocmd.nix ./maps.nix ./options.nix ];

  viAlias = true;
  vimAlias = true;

  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };

  diagnostics.virtual_lines.only_current_line = true;

  globals = {
    loaded_ruby_provider = 0; # Ruby
  };

  extraPackages = with pkgs; [ ansible-lint gcc xclip ];

  extraPlugins = with pkgs.vimPlugins; [
    ansible-vim
    vim-just

    # Required by terramate
    # vim-lsp
    # vim-terramate
  ];
}
