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
    mise
    writefreely
    sqlite
  ];

  imports = [
    (import ./bash.nix)
    (import ./vim.nix pkgs)
  ];
}
