{ pkgs, ... }:
{
  imports = [
    ./fish
    ./git
  ];

  home.packages = with pkgs; [
    # Tools
    ripgrep
    lazygit
    git
    # git-credential-oauth
    wget
    curl
    nitch # better wget?
    mpc-cli
    tty-clock
    eza
    btop
    wlr-randr # xrandr for wayland
    catimg # print img in the terminal
    pass # password manager
    gnupg # some crypto security shit idn
    pkg-config
    gptfdisk

    # Dev
    gnumake

    # Java
    jdk

    # Scala
    dotty 

    # C/CPP
    clang
    # Go
    go
    # Haskell
    ghc
    # Rust
    cargo
    rustc

    # JavaScript
    nodejs_20
    yarn
    nodePackages.pnpm
  ];
}
