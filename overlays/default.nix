{ lib, terramate, ... }:

let
  vim-terramate = final: prev: {
    vimPlugins = prev.vimPlugins // {
      vim-terramate = prev.vimUtils.buildVimPlugin {
        name = "vim-terramate";
        src = vim-terramate;
      };
    };
  };
in lib.composeManyExtensions [ vim-terramate ]
