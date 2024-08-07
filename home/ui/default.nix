{ home, pkgs, ... }: {
  imports = [
    # hyprland.homeManagerModules.default
    ./hypr
    ./themes
    # ./wallpapers
    ./swaylock
    ./dunst
    ./waybar
    ./wofi
  ];

  home.packages = with pkgs; [
    dunst
    cava           # sound visualizer
    pavucontrol    # sound manager
    grim           # screenshots graber
    bibata-cursors # cursor
    slurp          # didn't get what it does, smth with wayland
    wl-clipboard
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    xflux # saturation
    brightnessctl # control bright
  ] ++ (with pkgs.gnome; [ 
    nautilus
    zenity
    gnome-tweaks
    gnome-keyring # not very UI rather a system tool, but okay
    eog
  ]);

}
