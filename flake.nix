{
<<<<<<< HEAD
  description = "Lucos";

  
  # nixConfig here only affects flake itself
  nixConfig = {
    # substituters will be default when fetching packages
    # nix com   extra-substituter = [munity's cache server
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://cache.nixos.org/"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
=======
  description = "Lucos flake";

  # nixConfig here only affects flake itself
  nixConfig = {
    extra-substituters = [
      "https://cache.nixos.org/"
    ];
    extra-trusted-public-keys = [
>>>>>>> refs/remotes/origin/main
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

  inputs = {
<<<<<<< HEAD
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    #  home-manager.inputs.nxpkgs.follows = "nixpkgs";
    
    # Stylix
    stylix.url = "github:danth/stylix";


    # Add additional inputs if necessary
=======
    nixpkgs.url = "github:NixOs/nixpkgs/24.11";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Stylix (For ricing)
    stylix.url = "github:danth/stylix";

    #Additional inputs (nixvim)
>>>>>>> refs/remotes/origin/main
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs @ {
    self,
    nixpkgs,
    home-manager,
    stylix,
    ...
  }: {
    nixosConfigurations = {
      sgos = let
<<<<<<< HEAD
        username = "luc";
        specialArgs = {inherit username;};
      in
=======
        username = "nannyhead"
        specialArgs = {inherit username:}:
      in 
>>>>>>> refs/remotes/origin/main
        nixpkgs.lib.nixosSystem {
          inherit specialArgs;
          system = "x86_64-linux";

          modules = [
<<<<<<< HEAD
            ./hosts/nyx
            ./users/${username}/nixos.nix
            stylix.nixosModules.stylix # Importing Stylix Module
=======
            .hosts/Lucos
            .users/${username}/nixos.nix 
            
            stylix.nixosModules.stylix #Importing Stylix module 
>>>>>>> refs/remotes/origin/main
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
<<<<<<< HEAD

              home-manager.extraSpecialArgs = inputs // specialArgs;
              home-manager.users.${username} = import ./users/${username}/home.nix;
            }
          ];
        };
    };
  };
}
=======
              
              home-manager.extraSpecialArgs = inputs // specialArgs;
              home-manager.users.${username} = import ./users/${username}/home.nix;
            };
          ];
        };
      };
    };
  }
>>>>>>> refs/remotes/origin/main
