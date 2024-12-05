{
	plugins = {
		lsp.servers = {
			nixd = {
				enable = true;
				settings = {
					nixpkgs.expr = "import <nixpkgs> { }";
					formatting.command = [ "nixfmt" ];
					options = {
						nixos.expr = "(builtins.getFlake \"/home/unknown/nix-config\").nixosConfigurations.fafnir.options";
					};
				};
			};
		};
	};
}
