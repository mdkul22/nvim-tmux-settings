return {
	{
		'goolord/alpha-nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function ()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			-- Set header
			dashboard.section.header.val = {
				"		███╗      ██╗ ██╗   ██╗ ██╗   ██╗ ██╗    ██╗ ██╗ ███╗   ███╗		",
				"		████╗     ██║ ██║   ██║ ██║   ██║ ██║    ██║ ██║ ████╗ ████║		",
				"		██╔██╗    ██║ ██║   ██║ ██║   ██║ ██║    ██║ ██║ ██╔████╔██║		",
				"		██║╚██╗   ██║ ██║   ██║ ██║   ██║ ██║    ██║ ██║ ██╔████╔██║		",
				"		██║ ╚██╗  ██║ ██║   ██║ ██║   ██║ ██║    ██║ ██║ ██╔████╔██║		",
				"		██║  ╚██╗ ██║ ██║   ██║ ██║   ██║ ╚██╗  ██╔╝ ██║ ██║╚██╔╝██║		",
				"		██║   ╚██╗██║ ██║   ██║ ██║   ██║  ╚██╗██╔╝  ██║ ██║╚██╔╝██║		",
				"		██║    ╚████║ ╚██████╔╝ ╚██████╔╝   ╚████╝   ██║ ██║ ╚═╝ ██║		",
				"		╚═╝		╚═══╝  ╚═════╝   ╚═════╝     ╚══╝    ╚═╝ ╚═╝     ╚═╝		",
			}
			-- Set menu
				dashboard.section.buttons.val = {
				dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
				dashboard.button( "o", "  > Find old files", ":Telescope oldfiles<CR>"),
				dashboard.button( "f", "  > Find files", ":Telescope find_files<CR>"),
				dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
				dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
				dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),

			}
			-- require'alpha'.setup(require'alpha.themes.startify'.config)
			--dashboard.section.footer.val = {
			--	"	██████╗  ██████╗  ██████╗ ███╗   ███╗	",
			--	"	██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║	",
			--	"	██║  ██║██║   ██║██║   ██║██╔████╔██║	",
			--	"	██║  ██║██║   ██║██║   ██║██║╚██╔╝██║	",
			--	"	██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║	",
			--	"	╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═	",
			--}
			alpha.setup(dashboard.opts)
			-- Disable folding on alpha buffer
			vim.cmd([[
				autocmd FileType alpha setlocal nofoldenable
			]])
		end
	},
}
