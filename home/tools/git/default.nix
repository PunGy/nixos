
{ config, pkgs, ... }:
{
  home.file."~/.gitconfig".text = ''
[user]
	name = PunGy
	email = max.yakovlev555@gmail.com
[core]
	editor = nvim
[init]
	defaultBranch = main
    '';
}
