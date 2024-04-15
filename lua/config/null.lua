
require("null-ls").setup({
	sources = {
		require("none-ls.code_actions.eslint_d"),
		require("none-ls.formatting.eslint_d"),
		require("none-ls.diagnostics.eslint_d"),
	},
  handlers = {}
})
