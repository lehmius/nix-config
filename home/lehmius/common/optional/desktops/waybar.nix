{config, lib, pkgs, ...}:
let
	commonDeps = with pkgs; [
		coreutils
		gnugrep
		systemd
	];
#	mkScript = 
#		{
#			name ? "script",
#			deps ? [ ],
#			script ? "",
#		}:
#		lib.getExe {
#			pkgs.writeShellApplication {
#				inherit name;
#				text = script;
#				runtimeInputs = commonDeps ++ deps;
#			}
#		};
in
{
	systemd.user.services.waybar = {
		Unit.StartLimitBurst = 30;
	};
	programs.waybar = {
		enable = true;
		systemd = {
			enable = true;
			target = "hyprland-session.target";
		};
		settings = {};
	};
}
