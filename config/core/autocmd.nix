{
  autoCmd = [
    {
      event = "BufWrite";
      desc = "Remove whitespace on save";
      command = "%s/\\s\\+$//e";
    }

    {
      event = "FileType";
      desc = "Open help in a vertical split";
      pattern = "help";
      command = "wincmd L";
    }

    {
      event = "FileType";
      desc = "Set language for markdown files";
      pattern = [ "markdown" ];
      command = "setlocal spell spelllang=en_gb,fr";
    }

    {
      event = [ "BufEnter" "BufNewFile" ];
      desc = "Set tmgen file as terraform file";
      pattern = [ "*.tf.tmgen" "*.tf" ];
      command = "set filetype=terraform";
    }

    {
      event = "TextYankPost";
      desc = "Highlight on yank";
      command =
        ''lua vim.highlight.on_yank({ higroup="IncSearch", timeout=250 })'';
    }
  ];
}
