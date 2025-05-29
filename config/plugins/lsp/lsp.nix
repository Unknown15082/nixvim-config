{ pkgs, ... }:
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
				gopls.enable = true;
				ruff.enable = true;

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
		nvim-jdtls = {
			enable = true;
			configuration.__raw = ''vim.fn.stdpath 'cache' .. "/jdtls/config"'';
			data.__raw = "vim.fn.stdpath 'cache' .. '/jdtls/' .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')";

			settings.java = {
				configuration = {
					updateBuildConfiguration = "interactive";
					runtimes = [ pkgs.jdk ];
				};
				format = {
					# TODO: Enable this after deciding the format used
					enabled = false;
				};
				implementationCodeLens.enabled = true;
				inlayHints.parameterNames.enabled = "all";
				references.includeDecompiledSources = true;
				referencesCodeLens.enabled = true;
				signatureHelp.enabled = true;

				eclipse.downloadSources = true;
				maven.downloadSources = true;
			};
		};

		lsp-format.enable = true;
		nvim-autopairs = {
			enable = true;
			settings.checkTs = true;
		};
	};
}
