if pcall(require, "catppuccin") then
	require("catppuccin").setup({
		transparent_background = true,
	})

	vim.cmd.colorscheme("catppuccin-mocha")
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
else
	print("Catppuccin not installed!")
	return
end
