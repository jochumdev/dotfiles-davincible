local lsp_config = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")
local mason_lsp = require("mason-lspconfig")

require("null-ls").setup()
require("mason-null-ls").setup({
	-- A list of sources to install if they're not already installed.
	-- This setting has no relation with the `automatic_installation` setting.
	ensure_installed = {
		"stylua", "jq", "goimports", "golangci_lint",
		"gitlint", "hadolint", "prettierd", "shfmt", "black",
		"yamlfmt", "codespell", "textlint", "misspell"
	},
	-- Run `require("null-ls").setup`.
	-- Will automatically install masons tools based on selected sources in `null-ls`.
	-- Can also be an exclusion list.
	-- Example: `automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }`
	automatic_installation = true,
})

local servers = {
	-- "ansiblels",
	"bashls",
	-- "buildifier",
	"cmake",
	"cssls",
	"denols",
	"dockerls",
	"eslint",
	"gopls",
	"golangci_lint_ls",
	"graphql",
	"grammarly",
	-- "remark_ls",
	-- "zeta_note",
	"html",
	"jsonls",
	"jdtls", -- java
	"ltex",
	"sumneko_lua",
	-- "pyright",
	"jedi_language_server",
	"sqls",
	"tsserver",
	"yamlls",
}

local function common_on_attach(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local snore = { noremap = true, silent = true }

  buf_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", snore)
	buf_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", snore)
	-- buf_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", snore)
	-- buf_set_keymap("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "<leader>wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>", snore)
	buf_set_keymap("n", "<leader>wr", ":lua vim.lsp.buf.remove_workspace_folder()<CR>", snore)
	buf_set_keymap("n", "<leader>wl", ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", snore)
	buf_set_keymap("n", "<leader>D", ":lua vim.lsp.buf.type_definition()<CR>", snore)
	buf_set_keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", snore)
	buf_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", snore)
	buf_set_keymap("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>", snore)
	buf_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", snore)
	buf_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", snore)
	buf_set_keymap("n", "<leader>q", ":lua vim.diagnostic.set_loclist()<CR>", snore)

	-- Set some keybinds conditional on server capabilities
	if client.server_capabilities.document_formatting then
		buf_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.formatting()<CR>", snore)
	elseif client.server_capabilities.document_range_formatting then
		buf_set_keymap("n", "<leader>f", ":lua vim.lsp.buf.range_formatting()<CR>", snore)
	else
		buf_set_keymap("n", "<leader>f", ":Neoformat<CR>", snore)
	end
end

require("mason-lspconfig").setup({
	-- A list of servers to automatically install if they're not already installed. Example: { "rust-analyzer@nightly", "sumneko_lua" }
	-- This setting has no relation with the `automatic_installation` setting.
	ensure_installed = servers,

	-- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
	-- This setting has no relation with the `ensure_installed` setting.
	-- Can either be:
	--   - false: Servers are not automatically installed.
	--   - true: All servers set up via lspconfig are automatically installed.
	--   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
	--       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
	automatic_installation = true,
})

local default_lsp_opts = {
	on_attach = common_on_attach,
	-- Setup cmp for all servers
	capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
	-- capabilities = cmp_lsp.default_capabilities,
}

-- Setup LSP Servers
mason_lsp.setup_handlers({
	-- Default handler, for all LSP servers without explicit config
	function(server_name)
		local opts = vim.deepcopy(default_lsp_opts)
		lsp_config[server_name].setup(opts)
	end,

	["eslint"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.on_attach = function(client, bufnr)
			-- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
			-- the resolved capabilities of the eslint server ourselves!
			client.server_capabilities.document_formatting = true
			common_on_attach(client, bufnr)
		end

		opts.settings = {
			format = { enable = true }, -- this will enable formatting
		}

		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2

		lsp_config[server].setup(opts)
	end,

	["sumneko_lua"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.settings = {
			Lua = {
				diagnostics = {
					globals = { "vim", "use" },
				},
				workspace = {
					preloadFileSize = 1000,
					library = {
						[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					},
				},
				telemetry = {
					enable = false,
				},
			},
		}

		lsp_config[server].setup(opts)
	end,

	["denols"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.root_dir = lsp_config.util.root_pattern(".deno")

		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2

		lsp_config[server].setup(opts)
	end,

	["tsserver"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2

		lsp_config[server].setup(opts)
	end,

	["html"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.filetypes = { "html", "eta" }

		lsp_config[server].setup(opts)
	end,

	["ltex"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.filetypes = { "bib", "gitcommit", "org", "plaintex", "rst", "rnoweb", "tex" }

		lsp_config[server].setup(opts)
	end,

	["tailwindcss"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.filetypes = { "html", "eta", "js", "jsx", "javascript", "javascriptreact" }

		lsp_config[server].setup(opts)
	end,

	["golangci_lint_ls"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.filetypes = {"go"}

		lsp_config[server].setup(opts)
	end,

	["ansiblels"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.root_dir = lsp_config.util.root_pattern("ansible.cfg")

		lsp_config[server].setup(opts)
	end,

	["gopls"] = function(server)
		-- Get default config from Ray-x Go plugin
		local opts = vim.deepcopy(require("go.lsp").config())

		local attach = opts.on_attach
		opts.on_attach = function(client, bufnr)
			common_on_attach(client, bufnr)
			attach(client, bufnr)
		end

		opts.settings.gopls.buildFlags = { "-tags=wireinject" }

		lsp_config[server].setup(opts)
	end,

	["yamlls"] = function(server)
		local opts = vim.deepcopy(default_lsp_opts)

		opts.settings = {
			yaml = {
				trace = {
					server = "verbose",
				},
				schemas = {
					["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
					["http://json.schemastore.org/kustomization"] = "kustomization.yaml",
					["https://json.schemastore.org/chart.json"] = "Chart.yaml",
					["https://json.schemastore.org/taskfile.json"] = "Taskfile*.yml",
					["https://raw.githubusercontent.com/GoogleContainerTools/skaffold/master/docs/content/en/schemas/v2beta26.json"] = "skaffold.yaml",
					["https://raw.githubusercontent.com/rancher/k3d/main/pkg/config/v1alpha3/schema.json"] = "k3d.yaml",
					["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.24.2/all.json"] = "/*.yaml",
				},
			},
		}

		lsp_config[server].setup(opts)
	end,
})

-- lspInstall + lspconfig stuff
-- local function setup_servers()
-- 	-- lspconfig variables, not used now
-- 	local lspconfig = require("lspconfig")
-- 	local configs = require("lspconfig.configs")
--
-- 	-- lsp installer to manager servers
-- 	local lsp_installer = require("nvim-lsp-installer")
--
-- 	local servers = {
-- 		-- "ansiblels",
-- 		"bashls",
-- 		"buildifier",
-- 		"cmake",
-- 		"cssls",
-- 		"denols",
-- 		"dockerls",
-- 		"eslint",
-- 		"gopls",
-- 		"golangci_lint_ls",
-- 		"graphql",
-- 		"grammarly",
-- 		-- "remark_ls",
-- 		"zeta_note",
-- 		"html",
-- 		"jsonls",
-- 		"jdtls", -- java
-- 		"ltex",
-- 		"sumneko_lua",
-- 		-- "pyright",
-- 		"jedi_language_server",
-- 		"sqls",
-- 		"tsserver",
-- 		"yamlls",
-- 	}
--
-- 	for _, name in pairs(servers) do
-- 		local ok, server = lsp_installer.get_server(name)
-- 		-- Check that the server is supported in nvim-lsp-installer
-- 		if ok then
-- 			if not server:is_installed() then
-- 				print("Installing " .. name)
-- 				server:install()
-- 			end
-- 		end
-- 	end
--
-- 	-- Register a handler that will be called for all installed servers.
-- 	lsp_installer.on_server_ready(function(server)
-- 		local opts = {
-- 			on_attach = common_on_attach,
-- 			-- Setup cmp for all servers
-- 			capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities()),
-- 		}
--
-- 		-- (optional) Customize the options passed to the server
-- 		-- if server.name == "tsserver" then
-- 		--     opts.root_dir = function() ... end
-- 		-- end
--
-- 		if server.name == "eslint" then
-- 			opts.on_attach = function(client, bufnr)
-- 				-- neovim's LSP client does not currently support dynamic capabilities registration, so we need to set
-- 				-- the resolved capabilities of the eslint server ourselves!
-- 				client.server_capabilities.document_formatting = true
-- 				common_on_attach(client, bufnr)
-- 			end
-- 			opts.settings = {
-- 				format = { enable = true }, -- this will enable formatting
-- 			}
-- 			vim.bo.tabstop = 2
-- 			vim.bo.shiftwidth = 2
-- 		end
-- 		if server.name == "sumneko_lua" then
-- 			opts.settings = {
-- 				Lua = {
-- 					diagnostics = {
-- 						globals = { "vim", "use" },
-- 					},
-- 					workspace = {
-- 						preloadFileSize = 1000,
-- 						library = {
-- 							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
-- 						},
-- 					},
-- 					telemetry = {
-- 						enable = false,
-- 					},
-- 				},
-- 			}
-- 		end
-- 		if server.name == "denols" then
-- 			opts.root_dir = lspconfig.util.root_pattern(".deno")
-- 			vim.bo.tabstop = 2
-- 			vim.bo.shiftwidth = 2
-- 		end
-- 		if server.name == "tsserver" then
-- 			vim.bo.tabstop = 2
-- 			vim.bo.shiftwidth = 2
-- 		end
-- 		if server.name == "html" then
-- 			opts.filetypes = { "html", "eta" }
-- 		end
-- 		if server.name == "ltex" then
-- 			opts.filetypes = { "bib", "gitcommit", "org", "plaintex", "rst", "rnoweb", "tex" }
-- 		end
-- 		if server.name == "tailwindcss" then
-- 			opts.filetypes = { "html", "eta", "js", "jsx", "javascript", "javascriptreact" }
-- 		end
-- 		if server.name == "ansiblels" then
-- 			opts.root_dir = lspconfig.util.root_pattern("ansible.cfg")
-- 		end
-- 		if server.name == "gopls" then
-- 			local go_opts = require("go.lsp").config()
-- 			local attach = go_opts.on_attach
-- 			go_opts.on_attach = function(client, bufnr)
-- 				common_on_attach(client, bufnr)
-- 				attach(client, bufnr)
-- 			end
-- 			go_opts.settings.gopls.buildFlags = { "-tags=wireinject" }
-- 			opts = go_opts
-- 		end
-- 		if server.name == "yamlls" then
-- 			opts.settings = {
-- 				yaml = {
-- 					trace = {
-- 						server = "verbose",
-- 					},
-- 					schemas = {
-- 						["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
-- 						["http://json.schemastore.org/kustomization"] = "kustomization.yaml",
-- 						["https://json.schemastore.org/chart.json"] = "Chart.yaml",
-- 						["https://json.schemastore.org/taskfile.json"] = "Taskfile*.yml",
-- 						["https://raw.githubusercontent.com/GoogleContainerTools/skaffold/master/docs/content/en/schemas/v2beta26.json"] = "skaffold.yaml",
-- 						["https://raw.githubusercontent.com/rancher/k3d/main/pkg/config/v1alpha3/schema.json"] = "k3d.yaml",
-- 						["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.24.2/all.json"] = "/*.yaml",
-- 					},
-- 				},
-- 			}
-- 		end
--
-- 		-- This setup() function is exactly the same as lspconfig's setup function.
-- 		-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- 		server:setup(opts)
-- 	end)
--
-- 	-- manually set up tilt server
-- 	require("lspconfig").tilt_ls.setup({})
-- end
--
-- setup_servers()

-- OUTDATED:
-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require "lspinstall".post_install_hook = function()
--     setup_servers() -- reload installed servers
--     vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
-- end

-- LSP Signature
-- require "lsp_signature".setup()
