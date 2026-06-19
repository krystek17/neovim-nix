{
  flake.modules.nixvim.snacks = {
    plugins = {
      snacks.enable = true;

      which-key.settings.spec = [
        {
          __unkeyed-1 = "<leader>t";
          icon = "";
        }
      ];
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>t";
        action = ''<cmd>lua Snacks.terminal.toggle(nil, { win = { position = "float" } })<CR>'';

        options = {
          silent = true;
          desc = "Toggle Terminal";
        };
      }
      {
        # Alt+t: Shift-free on AZERTY and fires in terminal mode, so it
        # closes the float from inside without remapping <Esc>.
        mode = [
          "n"
          "t"
        ];
        key = "<A-t>";
        action = ''<cmd>lua Snacks.terminal.toggle(nil, { win = { position = "float" } })<CR>'';
        options = {
          silent = true;
          desc = "Toggle Terminal";
        };
      }
    ];
  };
}
