{
	keymaps = [
		# Open oil.nvim in floating window
		{
			key = "<Space><Space><Space>";
			mode = [ "n" ];
			action = "<cmd>Oil --float<CR>";
		}
		# Visual line j/k
		{
			key = "j";
			mode = [ "n" "x" ];
			action = "v:count == 0 ? 'gj' : 'j'";
			options = { expr = true; };
		}
		{
			key = "k";
			mode = [ "n" "x" ];
			action = "v:count == 0 ? 'gk' : 'k'";
			options = { expr = true; };
		}
		# C-s saving
		{
			key = "<C-s>";
			mode = [ "n" ];
			action = "<Cmd>silent! update | redraw<CR>";
		}
		{
			key = "<C-s>";
			mode = [ "i" ];
			action = "<Esc><Cmd>silent! update | redraw<CR>a";
		}
		# Splits navigation
		{
			key = "<C-h>";
			mode = [ "n" ];
			action = "<C-w>h";
		}
		{
			key = "<C-j>";
			mode = [ "n" ];
			action = "<C-w>j";
		}
		{
			key = "<C-k>";
			mode = [ "n" ];
			action = "<C-w>k";
		}
		{
			key = "<C-l>";
			mode = [ "n" ];
			action = "<C-w>l";
		}
		# Clear highlight on <Esc>
		{
			key = "<Esc>";
			mode = [ "n" ];
			action = "<Cmd>noh<CR>";
		}
	];
}
