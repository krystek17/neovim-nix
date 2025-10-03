{
  # FIXME:
  flake.modules.nixvim.core = { inputs, ... }: {
    nixpkgs.overlays = [
      (final: prev: {
        vimPlugins = prev.vimPlugins // {
          vim-terramate = prev.vimUtils.buildVimPlugin {
            name = "vim-terramate";
            src = inputs.vim-terramate;
          };
        };
      })
    ];
  };
}
