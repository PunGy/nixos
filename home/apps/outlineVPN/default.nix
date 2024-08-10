{ pkgs, lib, ... }:
pkgs.appimageTools.wrapType1 {
  name = "Outline-Client";
  version = "15";
  src = pkgs.fetchurl {
    url = "https://github.com/Jigsaw-Code/outline-apps/releases/latest/download/Outline-Client.AppImage";
  };

  # meta = with lib; {
  #   description = "Outline Client lets you share access to your VPN with anyone in your network, giving them access to the free and open internet.";
  #   homepage = "https://github.com/Jigsaw-Code/outline-apps";
  #   platforms = [ "x86_64-linux" ];
  # };
}


