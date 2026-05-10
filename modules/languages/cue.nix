{
  flake.modules.nixvim.languages = {
    plugins = {
      lsp.servers.cue = {
        enable = true;
      };

      conform-nvim.settings = {
        formatters_by_ft = {
          cue = [ "cue_fmt" ];
        };
      };

      lint = {
        lintersByFt = {
          cue = [ "cue" ];
        };
      };
    };
  };
}
