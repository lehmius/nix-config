# This file was adapted from EmergentMind on github 
# -> https://github.com/EmergentMind/nix-config/blob/dev/hosts/common/optional/services/greetd.nix
# greeter -> tuigreet https://github.com/apognu/tuigreet
# display manager -> greetd https://man.rs.ht/~kennylevinsen/greetd/
{config, pkgs, lib, ...}:
let
	cfg = config.autoLogin;
in
{
	opions.autoLogin = {
		enable = lib.mkEnableOption "Enable automatic login";

		username = lib.mkOption {
			type = lib.types.str;
			default = "guest";
			description = "User to automatically login";
		};
	};

	config = {
		services.greetd = {
			enable = true;

			restart = true;
			settings = {
				default_session = {
					command = "${pkgs.greetd.tuigreet}/bin/tuigreet --asterisks --time --time-format '%-H:% | %a %d' --cmd Hyprland";
					user = "lehmius";
				};

				initial_session = lib.mkIf cfg.enable {
					command = "${pkgs.hyprland}/bin/Hyprland";
					user = "${cfg.username}";
				};
			};
		};
	};
}
