{config, lib, pkgs, ...}:
{
	wayland.windowManager.hyprland.settings = {
		bind = 
			let
				directions = rec {
					left = "l";
					right = "r";
					up = "u";
					down = "d";
					h = left;
					l = right;
					k = up;
					j = down;
				};
				terminal = config.home.sessionVariables.TERM;
				editor = config.home.sessionVariable.EDITOR;
			in
			lib.flatten [
				"ALT, space, exec, rofi -show drun"
				"ALT, Return, exec, ${terminal}"
				
				"SHIFTALT, q, killactive"


				"SHIFTALT, r, exec, hyprctl reload"
			];
	};
}
