{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = builtins.readFile ./bashrc;
    shellAliases = {
      cat = "bat";
      hms = "home-manager switch --flake .";
    };
  };
}
