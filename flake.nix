{
	description = "Unknown's NixVim configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		flake-parts.url = "github:hercules-ci/flake-parts";

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { nixpkgs, flake-parts, nixvim, ... } @ inputs :
		flake-parts.lib.mkFlake { inherit inputs; } {
			systems = [
				"x86_64-linux"
				"aarch64-linux"
				"x86_64-darwin"
				"aarch64-darwin"
			];

			perSystem = { pkgs, system, ... }:
				let
					nixvimLib = nixvim.lib.${system};
					nixvim' = nixvim.legacyPackages.${system};
					nvim = nixvim'.makeNixvimWithModule {
						inherit pkgs;
						module = import ./config;
					};
				in {
					checks.default = nixvimLib.check.mkTestDerivationFromNvim {
						inherit nvim;
						name = "Test derivation";
					};

					packages.default = nvim;
				};
		};
}
