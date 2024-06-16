{ pkgs, ... }: {
  imports = [ ./autocmd.nix ./maps.nix ./options.nix ];

  viAlias = true;
  vimAlias = true;
  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };

  globals = {
    loaded_ruby_provider = 0; # Ruby
  };

  # extraConfigLua = builtins.readFile ./main.lua;
  extraPackages = with pkgs; [ ansible-lint gcc xclip ];

  extraPlugins = with pkgs.vimPlugins; [
    alpha-nvim
    ansible-vim
    friendly-snippets
    git-conflict-nvim
    harpoon2
    nginx-vim
    telescope-ui-select-nvim
    vim-just

    # Required by terramate
    vim-lsp
    # vim-terramate
  ];
}
