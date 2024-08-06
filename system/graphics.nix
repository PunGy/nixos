{ ... }:
{
  imports = [
    ./fonts
  ];
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  # Nvidia drives
  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    nvidiaSettings = true;
    open = true;
  };

  services.xserver = {
    enable = true;
    videoDrivers = ["nvidia"];
    xkb = {
      options = "caps:escape";
      layout = "us,ru";
    };
  };
  programs.dconf.enable = true;

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    config = {
      common = {
        default = ["gtk"];
      };
    };
  };
}
