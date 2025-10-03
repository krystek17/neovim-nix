{
  flake.modules.nixvim.core = {
    autoGroups = {
      highlight_yank = { };
      on_save = { };
      new_file = { };
      help = { };
    };

    autoCmd = [
      {
        group = "on_save";
        event = "BufWrite";
        desc = "Remove whitespace on save";
        command = "%s/\\s\\+$//e";
      }

      {
        group = "help";
        event = "FileType";
        desc = "Open help in a vertical split";
        pattern = "help";
        command = "wincmd L";
      }

      {
        group = "new_file";
        event = "FileType";
        desc = "Set language for markdown files";
        pattern = [ "markdown" ];
        command = "setlocal spell spelllang=en_gb,fr";
      }

      {
        group = "new_file";
        event = [ "BufEnter" "BufNewFile" ];
        desc = "Set tmgen file as terraform file";
        pattern = [ "*.tf.tmgen" "*.tf" ];
        command = "set filetype=terraform";
      }

      # {
      # group = "on_save";
      # event = [ "BufWritePost" ];
      #   desc = "Set tm.hcl file as terraform hcl";
      #   pattern = [ "*.tm.hcl" ];
      #   command = "TerramateFmt";
      # }

      {
        group = "highlight_yank";
        event = "TextYankPost";
        desc = "Highlight on yank";
        callback = {
          __raw = ''
            function()
              vim.highlight.on_yank({ timeout = 400, higroup = "IncSearch" })
            end
          '';
        };
      }
    ];
  };
}
