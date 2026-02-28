{
  config,
  lib,
  inputs,
  ...
}:

{
  perSystem =
    { pkgs, ... }:
    let
      nixvim = inputs.nixvim.legacyPackages.${pkgs.stdenv.hostPlatform.system};

      nixvimConfig = nixvim.makeNixvimWithModule {
        inherit pkgs;
        module.imports = lib.attrValues config.flake.modules.nixvim;
      };
    in
    {
      packages.default = nixvimConfig.config.build.package;
      legacyPackages.nixvimConfigurations.default = nixvimConfig;
    };
}
