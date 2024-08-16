
{ config, pkgs, ... }:
{
  programs = {
    ghc = {
      enable = true;
    };
  };
  home.file.".ghci".text = ''
    :set +m
    :set prompt "\ESC[33m\STXλ> \ESC[m\STX"
  '';
}
