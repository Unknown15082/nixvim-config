{
	plugins.oil = {
		enable = true;
		settings = { columns = [ "icon" ]; };
	};

	keymaps = [
		# Open oil.nvim in floating window
		{
			key = "<Space><Space><Space>";
			mode = [ "n" ];
			action = "<cmd>Oil --float<CR>";
		}
	];
}
