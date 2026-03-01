{
  flake.modules.nixvim.which-key = {
    plugins.which-key = {
      enable = true;
      lazyLoad.settings.event = "DeferredUIEnter";

      settings = {

        replace.desc = [
          [
            "<space>"
            "SPACE"
          ]
          [
            "<leader>"
            "SPACE"
          ]
          [
            "<[cC][rR]>"
            "RETURN"
          ]
          [
            "<[tT][aA][bB]>"
            "TAB"
          ]
          [
            "<[bB][sS]>"
            "BACKSPACE"
          ]
        ];

        win.border = "single";
      };
    };
  };
}
