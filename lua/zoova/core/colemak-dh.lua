local function set_mapping(mode, lhs, rhs, opts)
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- vim.keymap.del("o", "i", {})

set_mapping("", "m", "h", {})
set_mapping("", "n", "j", {})
set_mapping("", "e", "k", {})
set_mapping({ "n", "v" }, "i", "l", {})

set_mapping("", "M", "H", {})
set_mapping("", "N", "J", {})
set_mapping("", "E", "K", {})
set_mapping({ "n", "v" }, "I", "L", {})

set_mapping("", "h", "m", {})
set_mapping("", "k", "n", {})
set_mapping("", "j", "e", {})
set_mapping({ "n", "v" }, "l", "i", {})

set_mapping("", "H", "M", {})
set_mapping("", "K", "N", {})
set_mapping("", "J", "E", {})
set_mapping({ "n", "v" }, "L", "I", {})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "N", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "E", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "N", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "k", "nzzzv")
vim.keymap.set("n", "K", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- - WARNING conflicting keymap exists for mode **"n"**, lhs: **"gc"**
-- - rhs: `<Plug>(comment_toggle_linewise)`
-- - WARNING conflicting keymap exists for mode **"n"**, lhs: **"gr"**
-- - rhs: `<Plug>ReplaceWithRegisterOperator`
-- - WARNING conflicting keymap exists for mode **"n"**, lhs: **"gb"**
-- - rhs: `<Plug>(comment_toggle_blockwise)`
-- - WARNING conflicting keymap exists for mode **"n"**, lhs: **"yS"**
-- - rhs: `<Plug>(nvim-surround-normal-line)`
-- - WARNING conflicting keymap exists for mode **"n"**, lhs: **"ys"**
-- - rhs: `<Plug>(nvim-surround-normal)`
-- - WARNING conflicting keymap exists for mode **"o"**, lhs: **"i"**
-- - rhs: `l`
