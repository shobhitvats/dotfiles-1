{ lib, inputs, mypkgs, system, ... }:
{
  nixos =
    let
      hostname = "nixos";
      username = "shobhit";
      dotdir = "/home/${username}/dotfiles";
      pkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
        overlays = [
          (final: prev: {
            stable = import inputs.nixpkgs-stable {
              inherit system;
              config.allowUnfree = true;
            };

            master = import inputs.nixpkgs-master {
              inherit system;
              config.allowUnfree = true;
            };

            inherit mypkgs;
          })
        ];
      };
    in
    lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit inputs username hostname dotdir pkgs;
      };

      modules = [
        ./${hostname}/configuration.nix
      ];
    };
}
