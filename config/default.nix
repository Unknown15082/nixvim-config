{ lib, config, inputs, ... }:
{
	imports = [
		./core
		./plugins
	];

	viAlias = true;
	vimAlias = true;
	enableMan = true;
}
