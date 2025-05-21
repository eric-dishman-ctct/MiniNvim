local add, now = MiniDeps.add, MiniDeps.now

add('nvim-orgmode/orgmode')
add('akinsho/org-bullets.nvim')
add('chipsenkbeil/org-roam.nvim')

now(function() 
		require('orgmode').setup({
		org_agenda_files = 'C:\\Users\\dishmej\\OrgFiles\\*.org',
		org_default_notes_file = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
		org_todo_keywords = { 'TODO(t)','NEXT(n)', 'WAITING(w)', 'SOMEDAY(s)','|', 'DONE(d)', 'CANCELLED(c)'},
		org_todo_keyword_faces = {
				TODO = ':foreground #F16C75 :weight bold',
				WAITING = ':foreground #F16C75 :weight bold',
				NEXT = ':foreground #F265B5 :weight bold',
				SOMEDAY = ':foreground #A48CF2 :weight bold',
		},
		org_capture_templates = {
				n = {
						description = 'Note',
						template = '* %? \n',
						target = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
				},
				i = {
						description = 'Idea',
						template = '* %? \n %u',
						target = 'C:\\Users\\dishmej\\OrgFiles\\refile.org',
				},
		},
		org_id_method = 'uuid',
		org_id_link_to_org_use_id = true,
}) 
		require('org-bullets').setup()
		require('org-roam').setup({
				directory = 'C:\\Users\\dishmej\\OrgFiles\\zettelkasten',
				templates = {
								c = {
										description = 'core',
										template = '* Definition \n %? \n* Equations \n* Related Terms \n* References',
										target = '%<%Y-%m-%d>.org',
										},
								j = {
										description = 'Journal',
										template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?',
										target = '~/sync/org/journal.org'
								},
								m = {
										description = 'math zettel',
										template = '* Definition \n %? \n* Equations \n* Related Terms \n* References',
										target = '%<%Y-%m-%d>.org',
								},
								t = {
										description = 'topic zettel',
										template = '* Definition \n %? \n* Examples \n* Related Terms \n* References',
										target = '%<%Y-%m-%d>.org',
								},
						},
		})


end)

