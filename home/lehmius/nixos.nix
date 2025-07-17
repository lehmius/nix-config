{ config, pkgs, ... }:

{
  imports = [
  	/common/core/bash.nix
	/common/core/ghostty.nix

	/common/optional/desktop
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
