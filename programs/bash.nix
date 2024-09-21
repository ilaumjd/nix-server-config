{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = builtins.readFile ./bashrc;
    shellAliases = {
      # coreutils
      cat = "bat";
      rm = "trash";

      # nix
      hms = "home-manager switch --flake .";

      # git
      ga = "git add";
      gc = "git commit";
      gcm = "git commit -m";
      gco = "git checkout";
      glo = "git log --oneline --graph";
      gs = "scmpuff status";
    };
  };
}
