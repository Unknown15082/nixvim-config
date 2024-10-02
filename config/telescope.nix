{
	plugins.telescope = {
		enable = true;

		extensions = {
			fzf-native = {
				enable = true;
				settings.caseMode = "smart_case";
			};
			frecency = {
				enable = true;
				settings = {
					showUnindexed = true;
					defaultWorkspace = "CWD";
				};
			};
		};

		keymaps = {
			"<leader>ff" = "find_files";
			"<leader>ss" = "colorscheme";
			"<leader>sb" = "buffers";
			"<leader>sc" = "commands";
			"<leader>sk" = "keymaps";
			"<leader>sg" = "live_grep";
			"<leader>sw" = "grep_string";
		};

		settings = {
			defaults = {
				prompt_prefix = " ";
				selection_caret = " ";
				file_ignore_patterns = [ ".git/" ];
				color_devicons = true;

				mappings = {
					i = {
						"<Esc>" = {
							__raw = ''
								function(...)
									require("telescope.actions").close(...)
								end
							'';
						};
					};
				};
			};
			pickers = {
				find_files.hidden = true;
				colorscheme.enable_preview = true;
			};
		};
	};
}
