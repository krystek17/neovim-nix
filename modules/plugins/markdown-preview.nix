{
  flake.modules.nixvim.markdown-preview = {
    plugins.markdown-preview = {
      enable = true;
      settings = {
        autoClose = false;
        theme = "dark";
      };
    };
  };
}
