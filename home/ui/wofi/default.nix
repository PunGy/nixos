{ configs, pkgs, ... }:
{
    programs.wofi = {
        enable = true;
    };
    home.file.".config/wofi/config".text = builtins.readFile ./config;
    home.file.".config/wofi/style.css".source = ./style.css;
}
