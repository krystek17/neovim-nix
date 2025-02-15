{
  globals = {
    loaded_ruby_provider = 0; # Ruby
    loaded_perl_provider = 0; # Perl
    loaded_python_provider = 0; # Python 2
  };

  clipboard = {
    register = "unnamedplus"; # Use system clipboard
  };

  luaLoader.enable = true;

  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      plugins = true;
    };
  };

  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # System clipboard support
    clipboard = "unnamedplus";

    # Set tabs to 2 spaces
    tabstop = 2;
    expandtab = true;

    # Indentation
    shiftwidth = 2;
    smartindent = true;
    preserveindent = true;

    # Search
    hlsearch = false;
    ignorecase = true;
    incsearch = true;
    smartcase = true;

    # Enable mouse mode
    mouse = "a";

    # Enable cursor line + keep 0 lines above cursor
    cursorline = true;
    scrolloff = 9;

    # Remove swapfile & enable undofile
    swapfile = false;
    undofile = true;

    # Increase mvim speed
    updatetime = 100;
  };
}
