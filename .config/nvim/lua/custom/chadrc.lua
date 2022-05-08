local M = {}

local userPlugins = require "custom.plugins"

M.options = {
   user = function()
      vim.opt.clipboard = "unnamed"
   end,
}

M.ui = {
  hl_override = {
    Comment = { italic = true },
  },
  theme = "penokai", -- default theme
  transparency = true,
}

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "c",
        "lua",
        "cpp",
        "python",
        "bash",
        "latex",
      },
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
        show_trailing_blankline_indent = true,
        show_first_indent_level = true,
    },
  },
  remove = {},

  options = {
    packer = {
      init_file = "plugins.packerInit",
      snapshot = nil,
    },
    statusline = {
      separator_style = "round", -- default/round/slant/block/arrow
    },
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    }
  },

  -- add, modify, remove plugins
  user = userPlugins,
}

return M
