{ config, lib, pkgs, ... }:

{
  imports = [ 
    ./hyprland-environment.nix
  ];

  home.packages = with pkgs; [ 
    waybar
    swww
  ];
  
  #test later systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    enable = true;
    # package = pkgs.hyprland;
    systemd = { enable = true; };
    xwayland.enable = true;
    extraConfig = (builtins.readFile ./hyprland.conf);
  };
  home.file.".config/hypr/colors".source = ./colors;
}
