{
  plugins = {
    toggleterm = {
      enable = true;
      lazyLoad.settings.cmd = "ToggleTerm";

      settings = {
        direction = "vertical";
        insert_mappings = false;
        open_mapping = "[[<leader>t]]";
        size = 100;
      };
    };
  };
}
