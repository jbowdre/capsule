{
  description = "gemsite build environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; };
    gempost = pkgs.rustPlatform.buildRustPackage rec {
      pname = "gempost";
      version = "v0.3.0";

      src = pkgs.fetchFromGitHub {
        owner = "justlark";
        repo = pname;
        rev = version;
        hash = "sha256-T6CP1blKXik4AzkgNJakrJyZDYoCIU5yaxjDvK3p01U=";
      };
      cargoHash = "sha256-jG/G/gmaCGpqXeRQX4IqV/Gv6i/yYUpoTC0f7fMs4pQ=";
    };
  in
   {
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = with pkgs; [
        agate
        gempost
      ];
    };
  };
}

