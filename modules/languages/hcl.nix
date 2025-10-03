{
  flake.modules.nixvim.languages = { pkgs, ... }: {
    plugins.lsp.servers = {
      terraformls = {
        enable = true;
        package = pkgs.tofu-ls;
        cmd = [ "${pkgs.tofu-ls}/bin/tofu-ls" "serve" ];
      };
    };
  };
}
