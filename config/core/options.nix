{ pkgs, ... }:
{
	editorconfig.enable = true;
	clipboard.register = "unnamedplus";
	clipboard.providers.wl-copy.enable = true;

	globals = {
		mapleader = " ";
		maplocalleader = " ";
	};

	opts = {
		# General
		mouse = "a";
		swapfile = false;
		undofile = true;
		backup = false;
		writebackup = false;
		termguicolors = true;

		# UI
		shortmess = "ltToOCFsI";
		cursorline = true;
		signcolumn = "yes";
		showmode = false;
		ruler = false;

		# UX
		number = true;
		relativenumber = true;
		numberwidth = 4;
		cmdheight = 1;
		laststatus = 3;
		wrap = true;

		# Indentation
		expandtab = false;
		shiftwidth = 4;
		tabstop = 4;
		softtabstop = 4;
		smartindent = true;
		breakindent = true;

		# Split
		splitbelow = true;
		splitright = true;
		splitkeep = "cursor";
	};

	diagnostics = {
		update_in_insert = true;
		severity_sort = true;
	};
}
