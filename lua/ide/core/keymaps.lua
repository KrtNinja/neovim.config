vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local keymap = vim.keymap.set

keymap("n", "<space>", "<Nop>")
-- quit
keymap("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- windows
keymap("n", "<leader>wd", "<C-W>c", { desc = "Close window" })
keymap("n", "<leader>wh", "<C-W>s", { desc = "Split window horizontally" })
keymap("n", "<leader>wv", "<C-W>v", { desc = "Split window vertically" })
keymap("n", "<leader>we", "<C-W>=", { desc = "Make splits equal size"})

-- Move to window using the <ctrl> hjkl keys
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- buffers
keymap("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "Delete Buffer" })

-- tabs
keymap("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
keymap("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
keymap("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
keymap("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
keymap("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
keymap("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
keymap("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- Move Lines
keymap("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Terminal Mappings
-- keymap("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
-- keymap("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
-- keymap("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
-- keymap("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
-- keymap("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })
-- keymap("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
-- keymap("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- Other
keymap("i", "jk", "<esc>", { desc = "Exit insert mode with jk" })
keymap("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Clear search highlights" })
keymap({ "i", "x", "n", "s"}, "<c-s>", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<c-U>", "<c-U>zz", { remap = true })
keymap("n", "<c-D>", "<c-D>zz", { remap = true })

keymap("n", "<leader>ir", "<cmd>source %<cr>", { desc = "Refresh config" })
