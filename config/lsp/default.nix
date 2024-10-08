{
	imports = [
		./web.nix
		./rust.nix
		./cp.nix
		./markdown.nix
	];

	plugins.lsp.enable = true;
	plugins.nvim-autopairs = {
		enable = true;
		settings.checkTs = true;
	};

	plugins.lsp-format = {
		enable = true;
		setup = {
			cpp.exclude = [ "clangd" ];
		};
	};
}
