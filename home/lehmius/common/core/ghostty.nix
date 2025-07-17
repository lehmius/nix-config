{ config, pkgs, lib, ...}:
{	
	home.packages = with pkgs; [
		ghostty
	];
	programs.ghostty = {
		enable = true;
		settings = {
			font-size = 16;
			background-opacity = 0.95;
			background-blur = true;
		};
	};
}
