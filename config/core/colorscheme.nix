{
	colorschemes.catppuccin = {
		enable = true;
		settings = {
			flavour = "mocha";

			integrations = {
				cmp = true;
				treesitter = true;
				native_lsp = {
					enabled = true;
					virtual_text = {
						errors = [ "italic" ];
						hints = [ "italic" ];
						warnings = [ "italic" ];
						information = [ "italic" ];
						ok = [ "italic" ];
					};
					underlines = {
						errors = [ "underline" ];
						hints = [ "underline" ];
						warnings = [ "underline" ];
						information = [ "underline" ];
						ok = [ "underline" ];
					};
					inlay_hints = {
						background = true;
					};
				};
				semantic_tokens = true;
			};

			dim_inactive.enabled = true;
		};
	};
}
