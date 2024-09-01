{
  description = "A nixvim configuration";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    vim-terramate = {
      url = "github:terramate-io/vim-terramate";
      flake = false;
    };

  };

  outputs = { nixpkgs, nixvim, flake-parts, vim-terramate, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];

      perSystem = { pkgs, system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = { };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            overlays = [
              (final: prev: {
                vimPlugins = prev.vimPlugins // {
                  vim-terramate = prev.vimUtils.buildVimPlugin {
                    name = "vim-terramate";
                    src = inputs.vim-terramate;
                  };
                };
              })
            ];
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };

          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default =
              nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };
        };
    };
}
