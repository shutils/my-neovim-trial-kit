local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
  pattern = "*",
  command = ":lua vim.highlight.on_yank {higroup='IncSearch', timeout=300, on_visual=true}",
})

autocmd("QuickfixCmdPost", {
  pattern = "*",
  command = "copen",
})

