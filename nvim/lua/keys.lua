local map = vim.keymap.set

-- Auto-save when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modifiable and vim.bo.buftype == "" and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! write")
    end
  end,
})

-- Ctrl+A to select all
map({ "n", "i", "v" }, "<C-a>", "<Esc>ggVG", { desc = "Select all" })

-- Preserve clipboard when pasting over selection
map("x", "p", '"_dP', { desc = "Paste without overwriting register" })

-- Clear search highlight on Esc
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })
