{
  flake.modules.nixvim.core =
    { lib, ... }:
    {
      keymaps =
        let
          normal =
            lib.mapAttrsToList
              (
                key: value:
                let
                  v = if builtins.isString value then { action = value; } else value;
                in
                {
                  mode = "n";
                  inherit key;
                  action = v.action;
                }
                // lib.optionalAttrs (v ? desc) { options.desc = v.desc; }
              )
              {
                # Dismiss all notifications
                "<C-n>" = {
                  action = ''<cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>'';
                  desc = "Dismiss Notifications";
                };

                # Git
                "<leader>gg" = {
                  action = "<cmd>Neogit<CR>";
                  desc = "Neogit";
                };
                "<leader>gb" = {
                  action = "<cmd>Gitsigns blame_line<CR>";
                  desc = "Blame Line";
                };

                # No Highlight
                "<leader>h" = {
                  action = ":nohlsearch<CR>";
                  desc = "No Highlight";
                };

                # Nvim-tree
                "<leader>e" = {
                  action = "<cmd>NvimTreeToggle<CR>";
                  desc = "File Explorer";
                };

                # Resize with arrows
                "<C-Left>" = ":vertical resize -2<CR>";
                "<C-Right>" = ":vertical resize +2<CR>";

                # Save
                "<C-s>" = "<cmd>w<CR>";

                # Search cursor in the middle
                "n" = "nzzzv";
                "N" = "Nzzzv";

                # Tabs
                "<S-l>" = ":bnext<CR>";
                "<S-h>" = ":bprevious<CR>";
                "<leader>c" = {
                  action = ":bdelete<CR>";
                  desc = "Close Buffer";
                };

                # Lint
                "<leader>l" = {
                  action = "<cmd>lua print(vim.inspect(require('lint').linters_by_ft[vim.bo.filetype]))<CR>";
                  desc = "Show Linters";
                };

                # Telescope
                "<leader>b" = {
                  action = "<cmd>Telescope buffers<CR>";
                  desc = "Buffers";
                };
                "<leader>s" = {
                  action = "<cmd>Telescope find_files hidden=true<CR>";
                  desc = "Search Files";
                };
                "<leader>f" = {
                  action = "<cmd>Telescope live_grep<CR>";
                  desc = "Grep";
                };
                "<leader>r" = {
                  action = "<cmd>Telescope registers<CR>";
                  desc = "Registers";
                };
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

          insert =
            lib.mapAttrsToList
              (key: action: {
                mode = "i";
                inherit action key;
              })
              {
                # Escape
                "<C-c>" = "<ESC>";
              };
          visual =
            lib.mapAttrsToList
              (key: action: {
                mode = "v";
                inherit action key;
              })
              {
                # Move text up and down
                "J" = ":m '>+1<CR>gv=gv";
                "K" = ":m '<-2<CR>gv=gv";

                # Stay in indent mode
                "<" = "<gv";
                ">" = ">gv";

                # Escape
                "<C-c>" = "<ESC>";
              };
        in
        lib.nixvim.keymaps.mkKeymaps { options.silent = true; } (normal ++ insert ++ visual);
    };
}
