{
  imports = [
    ./bufferline.nix
    ./comment.nix
    ./git.nix
    ./markdown-preview.nix
    ./nvim-tree.nix
    ./toggleterm.nix
    ./ui.nix
  ];

  plugins = {

    # project-nvim = {
    #   enable = true;
    #   manualMode = false;
    #   enableTelescope = true;
    # };
    vim-surround.enable = true;
  };
}
