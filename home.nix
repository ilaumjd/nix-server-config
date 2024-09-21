{ pkgs, config, ... }:
{
  programs.home-manager.enable = true;

  home.username = "ilaumjd";
  home.homeDirectory = "/home/ilaumjd";

  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  home.packages = with pkgs; [
    writefreely
    sqlite
  ];

  imports = [
    (import ./programs/bash.nix)
    (import ./programs/bat.nix)
    (import ./programs/eza.nix)
    (import ./programs/fzf.nix)
    (import ./programs/mise.nix)
    (import ./programs/scmpuff.nix)
    (import ./programs/vim.nix pkgs)
  ];
}
