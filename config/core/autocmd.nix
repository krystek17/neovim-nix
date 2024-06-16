{
  autoCmd = [
    {
      event = "BufWrite";
      desc = "Remove trailing whitespace on save";
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
      event = "TextYankPost";
      desc = "Highlight on yank";
      callback.__raw = # lua
        ''
          function() vim.highlight.on_yank({ higroup="IncSearch", timeout=250 }) end
        '';
    }
  ];
}
