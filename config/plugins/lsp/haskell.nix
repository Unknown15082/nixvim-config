{
	plugins = {
		lsp.servers = {
			hls = {
				enable = true;
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
}
