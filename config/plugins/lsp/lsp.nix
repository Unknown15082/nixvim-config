{
	plugins = {
		lsp = {
			enable = true;
			servers = {
				clangd.enable = true;
				eslint.enable = true;
				tailwindcss.enable = true;
				cssls.enable = true;
				html.enable = true;

				hls = {
					enable = true;
					installGhc = false;
					filetypes = [ "haskell" "lhaskell" "cabal" ];
					settings = {
						haskell = {
							cabalFormattingProvider = "cabalfmt";
							formattingProvider = "stylish-haskell";
						};
					};
				};
			};
		};

		clangd-extensions.enable = true;
		typescript-tools.enable = true;
		rustaceanvim.enable = true;
		crates-nvim.enable = true;
		markdown-preview.enable = true;
		lsp-format.enable = true;
		nvim-autopairs = {
			enable = true;
			settings.checkTs = true;
		};
	};
}
