{ config, lib, pkgs, user, ... }:
{
  # Greetd with tuigreet lauches Hyprland

  programs.regreet.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
      };
    };
  };
  security.pam.services.swaylock = {};
}
