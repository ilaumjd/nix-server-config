{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = builtins.readFile ./bashrc;
  };
}
