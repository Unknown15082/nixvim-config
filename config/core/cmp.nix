{ pkgs, ... }:
{
	plugins = {
		luasnip = {
			enable = pkgs.lib.mkDefault true;
			settings = {
				enable_autosnippets = true;
				store_selection_keys = "<Tab>";
			};
			fromVscode = [
				{
					lazyLoad = true;
					paths = "${pkgs.vimPlugins.friendly-snippets}";
				}
			];
		};

		cmp = {
			enable = true;
			autoEnableSources = true;
			settings = {
				preselect = "cmp.PreselectMode.None";
				snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

				sources = [
					{ name = "nvim_lsp"; priority = 1000; }
					{ name = "nvim_lsp_signature_help"; priority = 1000; }
					{ name = "nvim_lsp_document_symbol"; priority = 1000; }
					{ name = "treesitter"; priority = 850; }
					{ name = "luasnip"; priority = 750; }
					{ name = "buffer"; priority = 500; }
					{ name = "rg"; priority = 300; }
					{ name = "path"; priority = 300; }
					{ name = "cmdline"; priority = 300; }
					{ name = "git"; priority = 250; }
					{ name = "calc"; priority = 150; }
				];

				mapping = {
					"<C-e>" = "cmp.mapping.abort()";
					"<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
					"<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
					"<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
					"<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
					"<C-f>" = "cmp.mapping.scroll_docs(4)";
					"<C-b>" = "cmp.mapping.scroll_docs(-4)";
					"<CR>" = "cmp.mapping.confirm({ select = true; })";
				};
			};
		};
	};
}
