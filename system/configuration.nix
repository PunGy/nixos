# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ pkgs, options, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./graphics.nix
      ./login.nix
      ./fonts
    ];

  # Bootloader

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # --- HARDWARE ---
  # Network
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;
  networking.firewall.enable = false;
  networking.timeServers = options.networking.timeServers.default ++ [ "ntp0.ntp-server.net" ];

  # Enable bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;
  services.blueman.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Printing service
  services.printing.enable = true;


  # --- Locale and time ---
  time.timeZone = "Europe/Moscow";
  services.ntp.enable = true;
  i18n.defaultLocale = "en_US.UTF-8";
  
  i18n.supportedLocales = [
    "en_US.UTF-8/UTF-8"
    "ru_RU.UTF-8/UTF-8"
  ];
  console = {
    font = "Lat2-Terminus16";
  #  keyMap = "us"; 
    useXkbConfig = true; # use xkbOptions in tty.
  };

  # --- User ---
  users.users.pungy = {
    isNormalUser = true;
    home = "/home/pungy";
    extraGroups = [ "wheel" "networkmanager" "docker" ];
  };

  # add /.local to $PATH
  environment.variables={
    NIXOS_OZONE_WL = "1";
    PATH = [
      "\${HOME}/.local/bin"
      "\${HOME}/.config/rofi/scripts"
    ];
    NIXPKGS_ALLOW_UNFREE = "1";
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = [
    pkgs.vim
    pkgs.neovim
    pkgs.git
    pkgs.wget
    pkgs.pciutils
    pkgs.zip
    pkgs.unzip
    pkgs.dconf
  ];

  # --- NIX ---
  nixpkgs.config.allowUnfree = true;

  # #Garbage colector
  # nix.gc = {
  #   automatic = true;
  #   dates = "weekly";
  #   options = "--delete-older-than 7d";
  # };

  system.autoUpgrade = {
    enable = false;
    channel = "https://nixos.org/channels/nixos-24.05";
  };

  system.stateVersion = "24.05";

  #Flakes
  nix = {
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
  };
}

