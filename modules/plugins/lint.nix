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
          json = [ "jsonlint" ];
        };

        linters = {
          fish.cmd = lib.getExe pkgs.fish;
          jsonlint.cmd = lib.getExe pkgs.nodePackages.jsonlint;
        };
      };
    };
}
