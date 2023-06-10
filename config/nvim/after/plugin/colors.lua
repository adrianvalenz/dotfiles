function Ghostbuster(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#191724" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#191724" })
end

Ghostbuster()

function Ghosted(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

Ghosted()

