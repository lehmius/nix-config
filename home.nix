{ config, pkgs, ... }:

{
  imports = [
    ./user/shell/bash.nix
    .user/app/terminal/ghostty.nix
  ];

  home.username = "lehmius";
  home.homeDirectory = "/home/lehmius";

 home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = [
   # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];

  home.file = {};
  
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
