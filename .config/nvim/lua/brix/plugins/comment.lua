return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		require("ts_context_commentstring").setup({
			enable_autocmd = false,
			languages = {
				typescript = "// %s",
			},
		})

		require("Comment").setup({
			pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			opts = {
				-- ignores empty lines
				ignore = "^$",
			},
			lazy = false,
		})
	end,
}
