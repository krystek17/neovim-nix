{
  flake.modules.nixvim.test = {
    plugins = {
      neotest = {
        enable = true;

        adapters = {
          go.enable = true;
        };
      };
    };
  };
}
