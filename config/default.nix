{ lib, config, inputs, ... }:
{
	imports = [
		./colorscheme.nix
		./cmp.nix
		./options.nix
		./vimtex.nix
		./lsp
		./treesitter

		./plugins.nix
	];

	viAlias = true;
	vimAlias = true;
	enableMan = true;
}
