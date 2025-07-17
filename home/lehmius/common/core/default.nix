{config, lib, pkgs, ...}:
{
	imports = lib.flatten [
		./bash.nix
		./ghostty.nix
	];

	home = {
		username = "lehmius";
		homeDirectory = "/home/lehmius";
		stateVersion = lib.mkDefault "25.05";
		sessionPath = [
			"$HOME/.local/bin"
		];
		sessionVariables = [
			SHELL = "bash";
			TERM = "ghostty";
			TERMINAL = "ghostty";
			VISUAL = "nvim";
			EDITOR = VISUAL;
		];
		preferXdgDirectories = true;
	};

	xdg = {
		enable = true;
		createDirectories = true;
		desktop = "${config.home.homeDirectory}/.desktop";
		documents = "${config.home.homeDirectory}/documents";
		downloads = "${config.home.homeDirectory}/downloads";
		music = "${config.home.homeDirectory}/media/audio";
		pictures = "${config.home.homeDirectory}/media/images";
		videos = "${config.home.homeDirectory}/media/video";

		extraConfig = {
			XDG_PUBLICSHARE_DIR = "/var/empty";
			XDG_TEMPLATES_DIR = "/var/empty";
		};
	};

	programs.home-manager.enable = true;
	systemd.user.startServices = "sd-switch";
}
