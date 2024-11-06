{ lib, config, inputs, ... }:
{
	imports = [
		./colorscheme.nix
		./cmp.nix
		./options.nix
		./keymaps.nix
		./vimtex.nix
		./telescope.nix
		./lualine.nix
		./lsp
		./treesitter

		./plugins.nix
	];

	viAlias = true;
	vimAlias = true;
	enableMan = true;
}
