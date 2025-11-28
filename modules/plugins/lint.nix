{
  flake.modules.nixvim.lint =
    { lib, pkgs, ... }:

    {
      plugins.lint = {
        enable = true;

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
