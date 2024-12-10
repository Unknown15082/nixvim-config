{
	plugins = {
		lsp = {
			enable = true;
			inlayHints = true;

			servers = {
				clangd.enable = true;
				eslint.enable = true;
				tailwindcss.enable = true;
				cssls.enable = true;
				html.enable = true;
				hyprls.enable = true;

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
			
			keymaps.lspBuf = {
				"<leader>ca" = "code_action";
				"gD" = "declaration";
				"gd" = "definition";
				"<leader>fm" = "format";
				"K"  = "hover";
				"gI" = "implementation";
				"gr" = "references";
				"<leader>rn" = "rename";
				"gy" = "type_definition";
				"gs" = "signature_help";
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
