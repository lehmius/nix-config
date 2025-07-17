{ config, pkgs, ... }:

{
  imports = [
	./common/core

	./common/optional/desktops
  ];

}
