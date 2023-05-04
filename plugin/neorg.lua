require('neorg').setup {
	load = {
		["core.defaults"] = {},
		["core.dirman"] = {
			config = {
				workspaces = {
					home = "~/Notes/home",
				}
			}
		},

		["core.concealer"] = {
			config = {
				folds = false,
				icons = {
					-- heading = {
					-- 	enabled = true,
					-- 	level_1 = { icon = "◈" },
					-- 	level_2 = { icon = " ◆" },
					-- 	level_3 = { icon = "  ◇" },
					-- 	level_4 = { icon = "   ❖" },
					-- 	level_5 = { icon = "    ⟡" },
					-- 	level_6 = { icon = "     ⋄" },
					-- },

                    icon_preset = "diamond",

					todo = {
						enabled = true,
						done = { icon = "✓" },
					},

				}
			}
		},

		["core.integrations.nvim-cmp"] = {},

		["core.completion"] = {
			config = {
				engine = "nvim-cmp"
			}
		},

		["core.export"] = {},
	}
}
