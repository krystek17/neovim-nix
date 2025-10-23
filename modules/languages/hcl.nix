{
  flake.modules.nixvim.languages =
    { lib, pkgs, ... }:
    {
      plugins = {
        lsp.servers.terraformls = {
          enable = true;
          package = pkgs.tofu-ls;
          cmd = [
            "${pkgs.tofu-ls}/bin/tofu-ls"
            "serve"
          ];
        };

        conform-nvim.settings = {
          formatters_by_ft = {
            hcl = [ "hcl" ];
            tf = [ "tofu_fmt" ];
            terraform = [ "tofu_fmt" ];
          };

          formatters.hcl.command = lib.getExe pkgs.hclfmt;
        };
      };
    };
}
