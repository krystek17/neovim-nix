{ config, lib, inputs, ... }:

{
  perSystem = { pkgs, ... }: {
    packages.default =
      inputs.nixvim.legacyPackages.${pkgs.system}.makeNixvimWithModule {
        inherit pkgs;
        module.imports = lib.attrValues config.flake.modules.nixvim;
      };
  };
}
