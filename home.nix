{ config, pkgs, ... }:

{
  imports = [
  	home/lehmius/common/core/bash.nix
	home/lehmius/common/core/ghostty.nix
  ];

  home.username = "lehmius";
  home.homeDirectory = "/home/lehmius";

 home.stateVersion = "25.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
   # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];

  home.file = {};
  
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
}
