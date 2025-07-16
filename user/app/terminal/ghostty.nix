{ config, pkgs, ...}:
{
	programs.ghostty = {
		enable = true;
		settings = {
			font-size: 16;
			background-opacity: 0.95;
			background-blur: true;
		};
	};
}
