{ config, pkgs, ...}:
let
	aliases = {
		ll = "ls -l";
		la = "ls -a";
		".." = "cd ..";
	};
in
{
	programs.bash = {
		enable = true;
		shellAliases = aliases;
	};
}
