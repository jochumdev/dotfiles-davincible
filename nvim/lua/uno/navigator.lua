require("navigator").setup({
	on_attach = function(client, bufnr)
		require('navigator.lspclient.mapping').setup({bufnr=bufnr, client=client})
	end,
	lsp = {
		enable = false,
	},
})
