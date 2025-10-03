{
  flake.modules.nixvim.nvim-tree = {
    plugins = {
      nvim-tree = {
        enable = true;

        settings = {
          diagnostics.enable = true;
          update_focused_file.enable = true;

          actions = {
            change_dir.enable = true;
            open_file.quit_on_open = true;
            remove_file.close_window = true;
          };
        };
      };
    };
  };
}
