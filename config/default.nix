{ lib, config, inputs, ... }:
{
	imports = [
		./colorscheme.nix
		./cmp.nix
		./options.nix
		./vimtex.nix
		./lsp
		./treesitter
	];

	viAlias = true;
	vimAlias = true;
	enableMan = true;
}
