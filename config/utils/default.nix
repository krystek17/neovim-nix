{
  imports = [
    ./bufferline.nix
    ./comment.nix
    ./git.nix
    ./markdown-preview.nix
    ./nvim-tree.nix
    ./toggleterm.nix
    ./ui.nix
    # ./which-key.nix
  ];

  plugins = {

    # project-nvim = {
    #   enable = true;
    #   manualMode = false;
    #   enableTelescope = true;
    # };
    intellitab.enable = true;
    lz-n.enable = true;
    vim-surround.enable = true;
  };
}
