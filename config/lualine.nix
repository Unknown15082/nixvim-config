{ pkgs, ... }:
{
	plugins.lualine = {
		enable = true;
		settings = {
			options = {
				theme = "auto";
				globalstatus = true;
				icons_enabled = true;

				section_separators = {
					left = "";
					right = "";
				};
				component_separators = "|";
			};

			sections = {
				lualine_a = [
					{
						__unkeyed-1 = "mode";
						separator = {
							left = "";
							right = "";
						};
					}
				];
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
							modified = "";
							readonly = "";
							unnamed = "";
						};
					}
				];

				lualine_x = [
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
				lualine_y = [
					{
						__unkeyed-1.__raw = ''
							function()
								local icon = " ";
								local bufnr = vim.api.nvim_get_current_buf()
								local clients = vim.lsp.buf_get_clients(bufnr)
								
								if next(clients) == nil then
									return ""
								end

								local c = {}
								for _, client in ipairs(clients) do
									table.insert(c, client.name)
								end

								return icon .. table.concat(c, ", ")
							end
						'';
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
