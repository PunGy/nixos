{ hyprland, pkgs, ...}: {

  imports = [
    ./kitty
  ];
  
  home.packages = (with pkgs; [
    #User Apps
    discord
    bibata-cursors
    vlc
    telegram-desktop
    kitty
    gedit
    vscode
    neovim

    (vivaldi.override {
      proprietaryCodecs = true;
      enableWidevine = false;
    })
    vivaldi-ffmpeg-codecs
    widevine-cdm

    #foliate # ebook reader
    obsidian
    zotero


    # Window
    rofi
    swaylock
  ]);
}
