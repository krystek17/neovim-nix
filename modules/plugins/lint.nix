{
  flake.modules.nixvim.lint =
    { lib, pkgs, ... }:

    {
      plugins.lint = {
        enable = true;

        autoCmd.event = [
          "BufReadPost"
          "BufWritePost" # Default value
          "InsertLeave"
        ];

        lazyLoad.settings.event = [
          "DeferredUIEnter"
        ];

        lintersByFt = {
          fish = [ "fish" ];
        };

        linters = {
          fish.cmd = lib.getExe pkgs.fish;
        };
      };
    };
}
