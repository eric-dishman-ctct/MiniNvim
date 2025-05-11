local add, now = MiniDeps.add, MiniDeps.now

add('nvim-orgmode/orgmode')
add('akinsho/org-bullets.nvim')
add('lukas-reineke/headlines.nvim')

now(function() 
		require('orgmode').setup({
		org_agenda_files = 'C:\\Users\\dishmej\\OrgFiles\\*.org',
		org_default_notes_file = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
		org_todo_keywords = { 'TODO', 'WAITING', 'WORKING','|', 'DONE'},
		org_capture_templates = {
				n = {
						description = 'Note',
						template = '* %? \n #+title: \n#+author: \n#+date: %u \n\n*',
						target = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
				},
				i = {
						description = 'Idea',
						template = '* %? \n %u',
						target = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
				}
		}
}) 
		-- vim.api.nvim_set_hl(0, 'HeadlineGreen', { bg = "#5eff6c" })
		-- vim.api.nvim_set_hl(0, 'HeadlineBlue', { bg = "#5ea1ff" })
		-- vim.api.nvim_set_hl(0, 'HeadlineRed', { bg = "#ff6e5e" })
		-- vim.api.nvim_set_hl(0, 'HeadlinePurple', { bg = "#bd5eff" })
		-- vim.api.nvim_set_hl(0, 'HeadlineYellow', { bg = "#f1ff5e" })
		
		-- Cyberdream
		-- vim.api.nvim_set_hl(0, 'Headline1', { bg = "#ff79c6" })
		-- vim.api.nvim_set_hl(0, 'Headline2', { bg = "#8be9fd" })
		-- vim.api.nvim_set_hl(0, 'Headline3', { bg = "#50fa7b" })
		-- vim.api.nvim_set_hl(0, 'Headline4', { bg = "#bd93f9" })
		-- vim.api.nvim_set_hl(0, 'Headline5', { bg = "#ffb86c" })
		-- vim.api.nvim_set_hl(0, 'Headline6', { bg = "#f1fa8c" })
		
		-- Cyberdream muted
		-- vim.api.nvim_set_hl(0, 'Headline1', { bg = "#D47FA6" })
		-- vim.api.nvim_set_hl(0, 'Headline2', { bg = "#6BC9E0" })
		-- vim.api.nvim_set_hl(0, 'Headline3', { bg = "#3FBF5E" })
		-- vim.api.nvim_set_hl(0, 'Headline4', { bg = "#9A7FC9" })
		-- vim.api.nvim_set_hl(0, 'Headline5', { bg = "#D49E6C" })
		-- vim.api.nvim_set_hl(0, 'Headline6', { bg = "#D1D97C" })

		-- Cyberdream muted more
		-- vim.api.nvim_set_hl(0, 'Headline3', { bg = "#B36F8E" })
		-- vim.api.nvim_set_hl(0, 'Headline1', { bg = "#5BA9C0" })
		-- vim.api.nvim_set_hl(0, 'Headline2', { bg = "#3A9F4E" })
		-- vim.api.nvim_set_hl(0, 'Headline4', { bg = "#7A5F99" })
		-- vim.api.nvim_set_hl(0, 'Headline5', { bg = "#B37E5C" })
		-- vim.api.nvim_set_hl(0, 'Headline6', { bg = "#B1B96C" })

		require('org-bullets').setup()
		-- local headline_highlights = {
		-- 						"HeadlineBlue",
		-- 						"HeadlineGreen",
		-- 						"HeadlineRed",
		-- 						"HeadlinePurple",
		-- 						"HeadlineYellow",
		-- 						"HeadlineGreen",}
		-- local headline_highlights = {
		-- 						"Headline1",
		-- 						"Headline2",
		-- 						"Headline3",
		-- 						"Headline4",
		-- 						"Headline5",
		-- 						"Headline6",
		-- 				}
		-- require('headlines').setup({
		-- 		markdown = { headline_highlights = headline_highlights },
		-- 		org = { 
		-- 				fat_headlines = false,
		-- 				headline_highlights = headline_highlights,
		-- 		},

		-- })

end)

