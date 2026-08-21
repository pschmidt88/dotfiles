-- The tmux half of vim-tmux-navigator is already installed via tpm (~/.tmux.conf).
-- It checks whether the focused pane is running nvim: if so it forwards the
-- keystroke instead of switching panes. This is the nvim half that catches it.
return {
  {
    "christoomey/vim-tmux-navigator",
    init = function()
      -- We define the mappings below, so don't let the plugin add its own.
      vim.g.tmux_navigator_no_mappings = 1
    end,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
    },
    -- These override LazyVim's plain <C-w>h/j/k/l defaults. LazyVim's
    -- safe_keymap_set() skips any key a plugin's `keys` already claims.
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to Left Window/Pane" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to Lower Window/Pane" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to Upper Window/Pane" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to Right Window/Pane" },
    },
  },
}
