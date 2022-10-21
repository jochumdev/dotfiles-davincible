-- Global Options
-- vim.go.guicursor    = "block"
vim.go.termguicolors = true
vim.go.hlsearch = false
vim.go.hidden = true
vim.go.errorbells = false
vim.go.ignorecase = true
vim.go.smartcase = true
vim.go.scrolloff = 12
vim.go.sidescrolloff = 21
--  vim.go.completeopt  = "menuone,noinsert,preview"
vim.go.completeopt = "menuone,noselect"
vim.go.cmdheight = 2
vim.go.mouse = "a"
vim.go.clipboard = "unnamedplus"
vim.go.wildmenu = true
vim.go.wildmode = "longest,list,full"
vim.go.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.go.backupdir = os.getenv("HOME") .. "/.nvim/backups"
vim.go.backup = true
vim.go.updatetime = 100
vim.go.fillchars = "eob: "
vim.go.laststatus = 3
vim.go.splitright = true
vim.go.splitbelow = false
vim.go.mousemodel = "extend"

-- Window Options
vim.wo.relativenumber = true
vim.wo.nu = true
vim.wo.wrap = false
vim.wo.colorcolumn = "80"
vim.wo.signcolumn = "yes"
vim.wo.foldcolumn = "2"

-- Buffer Options
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
vim.bo.smartindent = true
vim.bo.autoindent = true
vim.bo.swapfile = true
vim.bo.undofile = true

-- Global Variables
vim.g.mapleader = " "
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.mkdp_browser = "/usr/bin/" .. vim.fn.expand("$BROWSER")
-- vim.g.colorizer_auto_color = 1  -- might not be needed

vim.opt.wildignore = {
	"*.pyc",
	"*_build/*",
	"**/coverage/*",
	"**/node_modules/*",
	"**/android/*",
	"**/ios/*",
	"**/.git/*",
}

local _term = vim.api.nvim_create_augroup("Terminal", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.relativenumber = false
		vim.wo.number = false
		vim.cmd("startinsert")
	end,
	group = _term,
})

local _ft = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })
-- Lua
vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
	end,
	group = _ft,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "sh",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
	end,
	group = _ft,
})

vim.cmd("syntax on")
vim.cmd([[colorscheme tokyonight-night]])

require("symbols-outline").setup({
  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = false,
  position = 'right',
  relative_width = true,
  width = 25,
  auto_close = false,
  show_numbers = false,
  show_relative_numbers = false,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  autofold_depth = nil,
  auto_unfold_hover = true,
  fold_markers = { '', '' },
  wrap = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    close = {"<Esc>", "q"},
    goto_location = "<Cr>",
    focus_location = "o",
    hover_symbol = "<C-space>",
    toggle_preview = "K",
    rename_symbol = "r",
    code_actions = "a",
    fold = "h",
    unfold = "l",
    fold_all = "W",
    unfold_all = "E",
    fold_reset = "R",
  },
  lsp_blacklist = {},
  symbol_blacklist = {},
  symbols = {
    File = {icon = "", hl = "TSURI"},
    Module = {icon = "", hl = "TSNamespace"},
    Namespace = {icon = "", hl = "TSNamespace"},
    Package = {icon = "", hl = "TSNamespace"},
    Class = {icon = "𝓒", hl = "TSType"},
    Method = {icon = "ƒ", hl = "TSMethod"},
    Property = {icon = "", hl = "TSMethod"},
    Field = {icon = "", hl = "TSField"},
    Constructor = {icon = "", hl = "TSConstructor"},
    Enum = {icon = "ℰ", hl = "TSType"},
    Interface = {icon = "ﰮ", hl = "TSType"},
    Function = {icon = "", hl = "TSFunction"},
    Variable = {icon = "", hl = "TSConstant"},
    Constant = {icon = "", hl = "TSConstant"},
    String = {icon = "𝓐", hl = "TSString"},
    Number = {icon = "#", hl = "TSNumber"},
    Boolean = {icon = "⊨", hl = "TSBoolean"},
    Array = {icon = "", hl = "TSConstant"},
    Object = {icon = "⦿", hl = "TSType"},
    Key = {icon = "🔐", hl = "TSType"},
    Null = {icon = "NULL", hl = "TSType"},
    EnumMember = {icon = "", hl = "TSField"},
    Struct = {icon = "𝓢", hl = "TSType"},
    Event = {icon = "🗲", hl = "TSType"},
    Operator = {icon = "+", hl = "TSOperator"},
    TypeParameter = {icon = "𝙏", hl = "TSParameter"}
  }
})

vim.g['rooter_cd_cmd'] = 'lcd'
