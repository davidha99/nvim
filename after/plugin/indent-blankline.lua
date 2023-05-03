vim.cmd [[highlight IndentBlankline guifg=#1E1E1E gui=nocombine]]

indent = require("indent_blankline")

indent.setup {
  show_current_context = true,
  char_highlight_list = {
    "IndentBlankline"
  }
}
