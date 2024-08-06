{ hyprland, ...}: {

  imports = [
    # hyprland.homeManagerModules.default
    ./tools
    ./ui
    ./apps
    ./scripts
  ];

  home = {
    username = "pungy";
    homeDirectory = "/home/pungy";
  };

  programs.home-manager.enable = true;

  home.stateVersion = "24.05";
}
