return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true, -- loaded on demand by the colorscheme function below
    opts = {
      -- "auto" follows vim.o.background, which nvim syncs to your terminal.
      -- Ghostty is set to dark:Frappe / light:Latte, so mirror that here.
      flavour = "auto",
      -- Also set explicitly: catppuccin falls back to this table, and its
      -- default dark is "mocha" -- that fallback was overriding the flavour.
      background = {
        light = "latte",
        dark = "frappe",
      },
      lsp_styles = {
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
    },
    -- specs = {
    --   {
    --     "akinsho/bufferline.nvim",
    --     optional = true,
    --     opts = function(_, opts)
    --       if (vim.g.colors_name or ""):find("catppuccin") then
    --         opts.highlights = require("catppuccin.special.bufferline").get_theme()
    --       end
    --     end,
    --   },
    -- },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- A function, not a string. Requiring the module forces lazy.nvim to
      -- load the plugin (running setup() with the opts above) BEFORE any
      -- colors are painted. With the plain string "catppuccin", nvim sources
      -- colors/catppuccin.lua first and setup() lands too late -> mocha.
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
}
