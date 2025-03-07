{ pkgs, config, ... }:
{
  programs.home-manager.enable = true;

  home.username = "iam";
  home.homeDirectory = "/home/iam";

  home.stateVersion = "24.05";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  home.packages = with pkgs; [
    fd
    ripgrep
    tealdeer
    trash-cli
    wget

    # formatter
    nixfmt-rfc-style
  ];

  imports = [
    (import ./programs/bash.nix)
    (import ./programs/bat.nix)
    (import ./programs/eza.nix)
    (import ./programs/fzf.nix)
    (import ./programs/mise.nix)
    (import ./programs/scmpuff.nix)
    (import ./programs/vim.nix pkgs)
    (import ./programs/zoxide.nix)
  ];
}
