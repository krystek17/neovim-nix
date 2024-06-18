{ lib, helpers, ... }:

{
  globals.mapleader = " ";
  keymaps = let
    normal = lib.mapAttrsToList (key: action: {
      mode = "n";
      inherit action key;
    }) {
      # Dismiss all notifications
      "<C-n>" = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';

      # Neogit
      "<leader>g" = "<cmd>Neogit<CR>";

      # No Highlight
      "<leader>h" = ":nohlsearch<CR>";

      # Nvim-tree
      "<leader>e" = "<cmd>NvimTreeToggle<CR>";

      # Project
      "<leader>o" = ":Telescope projects<CR>";

      # Resize with arrows
      "<C-Left>" = ":vertical resize -2<CR>";
      "<C-Right>" = ":vertical resize +2<CR>";

      # Save & Quit
      "<C-s>" = "<cmd>w<CR>";
      "<C-q>" = "<cmd>qa!<CR>";

      # Search cursor in the middle
      "n" = "nzzzv";
      "N" = "Nzzzv";

      # Tabs
      "<S-l>" = ":bnext<CR>";
      "<S-h>" = ":bprevious<CR>";
      "<leader>c" = ":bdelete<CR>";

      # Telescope
      "<leader>b" = "<cmd>Telescope buffers<CR>";
      "<leader>s" = "<cmd>Telescope find_files hidden=true<CR>";
      "<leader>f" = "<cmd>Telescope live_grep<CR>";
      "<leader>r" = "<cmd>Telescope registers<CR>";
      "<C-p>" = "<cmd>Telescope oldfiles<CR>";

      # Vsplit
      "<C-t>" = ":vsplit<CR>";

      # Windows navigation
      "<C-h>" = "<C-w>h";
      "<C-l>" = "<C-w>l";
      "<C-j>" = "<c-w>j";
      "<C-k>" = "<C-w>k";
      "<C-d>" = "<C-d>zz";
      "<C-u>" = "<C-u>zz";
    };

    insert = lib.mapAttrsToList (key: action: {
      mode = "i";
      inherit action key;
    }) {
      # Escape
      "<C-c>" = "<ESC>";
    };
    visual = lib.mapAttrsToList (key: action: {
      mode = "v";
      inherit action key;
    }) {
      # Move text up and down
      "J" = ":m '>+1<CR>gv=gv";
      "K" = ":m '<-2<CR>gv=gv";

      # Stay in indent mode
      "<" = "<gv";
      ">" = ">gv";

      # Escape
      "<C-c>" = "<ESC>";
    };
  in helpers.keymaps.mkKeymaps { options.silent = true; }
  (normal ++ insert ++ visual);
}
