{
  flake.modules.nixvim.misc = {
    plugins = {
      helm.enable = true;
      intellitab.enable = true;
      lz-n.enable = true;
      vim-surround.enable = true;
    };
  };
}
