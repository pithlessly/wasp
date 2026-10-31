{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-old.url = "github:NixOS/nixpkgs/nixos-21.11";
  };

  outputs = { nixpkgs, nixpkgs-old, ... }:
  let
    supportedSystems = [ "x86_64-linux" ];
    eachSystem = nixpkgs.lib.genAttrs supportedSystems;
  in {
    devShell = eachSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        pkgs-old = nixpkgs-old.legacyPackages.${system};
      in import ./shell.nix {
        inherit pkgs;
        llvm = pkgs-old.llvmPackages_14.llvm;
      }
    );
  };
}
