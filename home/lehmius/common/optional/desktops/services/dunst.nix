{pkgs, ...}:
{
	home.packages = builtins.attrValues {
		# dunst dependencies
		inherit (pkgs) libnotify;
	};

	services.dunst = {
		enable = true;
	};
}
