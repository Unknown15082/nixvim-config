{ pkgs, ... }:
{
	plugins.lualine = {
		enable = true;
		settings = {
			options = {
				theme = "auto";
				globalstatus = true;
			};

			sections = {
				lualine_a = [ "mode" ];
				lualine_b = [ "branch" ];
				lualine_c = [
					{
						__unkeyed-1 = "filetype";
						icon_only = true;
						separator = "";
						padding = {
							left = 1;
							right = 0;
						};
					}
					{
						__unkeyed-1 = "filename";
						path = 1;
						symbols = {
							modified = "  ";
							readonly = "";
							unnamed = "";
						};
					}
				];

				lualine_x = [];
				lualine_y = [
					{
						__unkeyed-1 = "diagnostics";
						symbols = {
							error = " ";
							warn = " ";
							info = " ";
							hint = " ";
						};
					}
				];
				lualine_z = [
					{
						__unkeyed-1 = "location";
						padding = {
							left = 0;
							right = 1;
						};
					}
				];
			};
		};
	};
}
