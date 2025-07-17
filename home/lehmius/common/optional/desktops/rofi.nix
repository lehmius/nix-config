{pkgs, ...}:
{
	programs.rofi = {
		enable = true;
		package = pkgs.rofi-wayland;

		extraConfig = {
			show-icons = true;
			drun-match-fields = "name";
			drun-display-format = "{name}";
			drun-search-paths = "home/lehmius/.nix-profile/share/applications,/home/lehmius/.nix-profile/share/wayland-sessions";
		};
	};
}
