{
  plugins = {
    nvim-tree = {
      enable = true;
      diagnostics.enable = true;
      updateFocusedFile.enable = true;

      actions = {
        changeDir.enable = true;
        openFile.quitOnOpen = true;
        removeFile.closeWindow = true;
      };
    };
  };
}
