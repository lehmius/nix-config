{ config, pkgs, ... }:

{
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

  programs.bash = {
	enable = true;
	shellAliases = {
		".." = "cd ..";
		ll = "ls -l";
		la = "ls -a";
		lla = "ls -la";
	};
  };

  programs.home-manager.enable = true;
}
