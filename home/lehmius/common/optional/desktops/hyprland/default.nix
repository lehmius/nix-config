{pkgs, config, lib, ...}:
{
	imports = [
		./binds.nix
	];

	wayland.windowManager.hyprland = {
		enable = true;
		systemd = {
			enable = true;
			variables = [ "--all" ];
			extraCommands = lib.mkBefore [
				"systemctl --user stop graphical-session.target"
				"systemctl --user start hyprland-session.target"
			];
		};

		plugins = [];

		settings = {
			env = [
				"XDG_SESSION_TYPE,wayland"
				"WLR_NO_HARDWARE_CURSORS,1"
				"WLR_RENTERER_ALLOW_SOFTWARE,1"
				"QT_QPA_PLATFORM,wayland"
			];
		};
	};
}
