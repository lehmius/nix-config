{pkgs, ...}:
{
	imports = [
		./hyprland

		# utilities
		./services/dunst.nix
		./waybar.nix
		./rofi.nix
	];
	home.packages = [];
}
