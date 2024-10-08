{ pkgs, ... }:
{
	plugins.vimtex = {
		enable = true;
		texlivePackage = pkgs.texlive.combined.scheme-full;

		settings = {
			view_method = "zathura_simple";

			compiler_latexmk = {
				aux_dir = "aux/";
				out_dir = "dir/";
			};

			quickfix_ignore_filters = [
				"Underfull"
				"Overfull"
			];
		};
	};
}
