local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- vim.g.mapleader = "<space>"

--Remap space as leader key
keymap("", "<space>", "<Nop>", opts)
-- keymap("", "<space>", "<leader>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize +2<CR>", opts)
keymap("n", "<A-Down>", ":resize -2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Move text up and down 
keymap("n", "-", "<Esc>:m .-1<CR>==", opts) -- Up
keymap("n", "_", "<Esc>:m .+1<CR>==", opts) -- Down

-- Hopping 
keymap("n", "mp", "<cmd>HopPattern<cr>", opts)
keymap("n", "mv", "<cmd>HopVerticalAC<cr>", opts) -- Vertical UP
keymap("n", "mV", "<cmd>HopVerticalBC<cr>", opts) -- Vertical DOWN


-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "K", ":move '<-2<CR>gv-gv", opts) -- Up
keymap("v", "J", ":move '>+1<CR>gv-gv", opts) -- Down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Add pairs in visual mode
keymap("v", "\\(", "<esc>`<i(<esc>`>la)", opts)
keymap("v", "\\[", "<esc>`<i[<esc>`>la]", opts)
keymap("v", "\\{", "<esc>`<i{<esc>`>la}", opts)
keymap("v", "\\`", "<esc>`<i`<esc>`>la`", opts)
keymap("v", "\\'", "<esc>`<i'<esc>`>la'", opts)
keymap("v", "\\<", "<esc>`<i<<esc>`>la>", opts)
keymap("v", "\\\"", "<esc>`<i\"<esc>`>la\"", opts)


-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "jj", "<esc>", term_opts)

