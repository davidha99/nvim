vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFindFileToggle)

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "l", action = "edit" },
				{ key = "h", action = "close_node" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
})
