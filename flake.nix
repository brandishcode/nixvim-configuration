{
  description = "brandishcode's nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { nixpkgs, flake-utils, nixvim, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        defaultNixvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = ./config;
        };
      in {
        packages = rec {
          default = defaultNixvim;
          cpp = defaultNixvim.extend { imports = [ ./cpp ]; };
          opengl = cpp.extend { imports = [ ./opengl ]; };
          go = defaultNixvim.extend { imports = [ ./go ]; };
          js = defaultNixvim.extend { imports = [ ./javascript ]; };
          java = defaultNixvim.extend { imports = [ ./java ]; };
        };
      });
}
