{
  flake.modules.nixvim.yazi =
    { pkgs, ... }:
    let
      # yazi reads its config from $YAZI_CONFIG_HOME/yazi.toml.
      # Generate one in the Nix store so the plugin-bundled yazi shows
      # dotfiles, without installing yazi on the system.
      yaziConfigHome = pkgs.writeTextDir "yazi.toml" ''
        [mgr]
        show_hidden = true
      '';
    in
    {
      # yazi.nvim spawns yazi as a child process, inheriting vim.env.
      extraConfigLuaPre = ''
        vim.env.YAZI_CONFIG_HOME = "${yaziConfigHome}"
      '';

      plugins = {
        yazi = {
          enable = true;
          lazyLoad.settings.cmd = [ "Yazi" ];
        };
      which-key.settings.spec = [
        {
          __unkeyed-1 = "<leader>e";
          icon = "󰪶";
        }
        {
          __unkeyed-1 = "<leader>E";
          icon = "󰪶";
        }
      ];
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        action = "<cmd>Yazi<CR>";
        options = {
          silent = true;
          desc = "Yazi (current file)";
        };
      }
      {
        mode = "n";
        key = "<leader>E";
        action = "<cmd>Yazi toggle<CR>";
        options = {
          silent = true;
          desc = "Yazi (resume)";
        };
      }
    ];
  };
}
