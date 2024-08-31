local M = {}

M.setup = function()
  lvim.plugins = {
    {
      "f-person/git-blame.nvim",
      event = "BufRead",
      config = function()
        vim.cmd "highlight default link gitblame SpecialComment"
        vim.g.gitblame_enabled = 0
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
          RGB = true,      -- #RGB hex codes
          RRGGBB = true,   -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true,   -- CSS rgb() and rgba() functions
          hsl_fn = true,   -- CSS hsl() and hsla() functions
          css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
        })
      end,
    },
    {
      "rmagatti/goto-preview",
      config = function()
        require('goto-preview').setup {
          width = 120,              -- Width of the floating window
          height = 25,              -- Height of the floating window
          default_mappings = false, -- Bind default mappings
          debug = false,            -- Print debug information
          opacity = nil,            -- 0-100 opacity level of the floating window where 100 is fully transparent.
          post_open_hook = nil      -- A function taking two arguments, a buffer and a window to be ran as a hook.
          -- You can use "default_mappings = true" setup option
          -- Or explicitly set keybindings
          -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
          -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
          -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
        }
      end
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("hop").setup()
        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
      end,
    },
    {
      "ggandor/lightspeed.nvim",
      event = "BufRead",
    },
    {
      "folke/trouble.nvim",
      config = function()
        require("trouble").setup {
          auto_open = false,
          auto_close = true,
          padding = false,
          height = 10,
          use_diagnostic_signs = true,
        }
      end,
      event = "VeryLazy",
      cmd = "Trouble",
    },
    {
      "fatih/vim-go"
    },
    {
      "sindrets/diffview.nvim",
      event = "BufRead",
    },
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    },
    {
      'akinsho/flutter-tools.nvim',
      lazy = false,
      dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
        'mfussenegger/nvim-dap'
      },
      config = true,
      ft = "dart"
    },
    -- {
    --   'morhetz/gruvbox'
    -- }
    {
      'gruvbox-community/gruvbox'
    },
    -- {
    --   'sainnhe/gruvbox-material'
    -- },
    -- TODO
    -- {
    --   'mrcjkb/rustaceanvim',
    --   version = '^4', -- Recommended
    --   ft = { 'rust' },
    -- }
    {
      "xiantang/darcula-dark.nvim",
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
      },
    },
    {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
    "GRemove",
    "GRename",
    "Glgrep",
    "Gedit"
  },
  ft = {"fugitive"}
},
  }
end

return M
