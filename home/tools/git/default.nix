
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

  programs.git = {
    enable = true;
    extraConfig = {
      credential.helper = "oauth";
      # credential.helper = "${
      #     pkgs.git.override { withLibsecret = true; }
      #   }/bin/git-credential-libsecret";
    };
  };

  # services.pass-secret-service = {
  #   enable = true;
  #   package = pkgs.libsecret;
  # };
# Daemon to manage secret (private) keys independently from any protocol
  # programs.gpg.enable = true;
  # services.gpg-agent = {
  #   enable = true;
  #   enableSshSupport = true;
  #   pinentryFlavor = "gtk2"; # Hyprland/Wayland
  # };
}
