return {
  "numToStr/Comment.nvim",
  keys = {
    { "gcc", mode = "n",          desc = "Comment toggle current line" },
    { "gc",  mode = { "n", "o" }, desc = "Comment toggle linewise" },
    { "gc",  mode = "x",          desc = "Comment toggle linewise (visual)" },
    { "gbc", mode = "n",          desc = "Comment toggle current block" },
    { "gb",  mode = { "n", "o" }, desc = "Comment toggle blockwise" },
    { "gb",  mode = "x",          desc = "Comment toggle blockwise (visual)" },
  },
  opts = {
    padding = true, ---Add a space b/w comment and the line
    sticky = true, ---Whether the cursor should stay at its position
    ignore = nil, ---Lines to be ignored while (un)comment
    toggler = { ---LHS of toggle mappings in NORMAL mode
      line = "gcc",
      block = "gbc",
    },
  },
  lazy = false,
}
