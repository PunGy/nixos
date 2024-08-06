{
    description = "PunGy Flake";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/release-24.05";
        home-manager = {
            url = "github:nix-community/home-manager/release-24.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        hyprland = {
          type = "git";
          url = "https://github.com/hyprwm/Hyprland";
          submodules = true;
        };
        # hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
    };

    outputs = { self, nixpkgs, home-manager, hyprland, ...}: 

    let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;	
    };
    lib = nixpkgs.lib;

    in {
    nixosConfigurations = {
        pungy = lib.nixosSystem rec {
        inherit system;
        specialArgs = { inherit hyprland; };
        modules = [ 
            ./system/configuration.nix
            hyprland.nixosModules.default
            home-manager.nixosModules.home-manager
            {
                home-manager.useGlobalPkgs = true;
                home-manager.useUserPackages = true;
                home-manager.users.pungy = import ./home/home.nix ;
                home-manager.extraSpecialArgs = specialArgs;
            }
        ];
        };
    };
    };
}
