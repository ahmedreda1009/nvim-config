require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jf", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Move Lines
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- lazy
map("n", "<leader>lz", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- windows
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
map("n", "<leader>w-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>w|", "<C-W>v", { desc = "Split Window Right", remap = true })

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- VimTmuxNavigator
map("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", { noremap = true, silent = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { noremap = true, silent = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { noremap = true, silent = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { noremap = true, silent = true })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>", { noremap = true, silent = true })

-- LazyGit
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Open lazy git" })

-- Telescope
-- TODO: not working
-- map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
-- local actions = require "telescope.actions"
-- map("i", "<C-k>", actions.move_selection_previous, { desc = "move to prev result" })
-- map("i", "<C-j>", actions.move_selection_next, { desc = "move to next result" })
--
-- Todo comments
local todo_comments = require "todo-comments"
map("n", "]t", function()
  todo_comments.jump_next()
end, { desc = "Next todo comment" })

map("n", "[t", function()
  todo_comments.jump_prev()
end, { desc = "Previous todo comment" })

todo_comments.setup()
