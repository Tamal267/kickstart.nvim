local map = vim.api.nvim_set_keymap

map("n", "<F2>", ":w<CR>", {})
map("i", "<F2>", "<Esc>:w<CR>", {})

map("n", ";;", ":HopWord<CR>", {})
map("n", ";c", ":HopChar1<CR>", {})

vim.api.nvim_create_autocmd("FileType", { pattern = "cpp",
	command = "nnoremap <F5> :vsplit <Bar> execute 'terminal g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp' <Bar> startinsert<CR>"})

vim.api.nvim_create_autocmd("FileType", { pattern = "c",
	command = "nnoremap <F5> :vsplit <Bar> execute 'terminal g++ -fsanitize=address -std=c++20 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp' <Bar> startinsert<CR>"})


vim.api.nvim_create_autocmd("FileType", { pattern = "cpp",
	command = "nnoremap <F9> :vsplit <Bar> execute 'terminal g++ -g % -o %:r && ./%:r' <Bar> startinsert<CR>"})

vim.api.nvim_create_autocmd("FileType", { pattern = "c",
	command = "nnoremap <F9> :vsplit <Bar> execute 'terminal g++ -g % -o %:r && ./%:r' <Bar> startinsert<CR>"})


vim.api.nvim_create_autocmd("FileType", { pattern = "py",
	command = "nnoremap <F9> :vsplit <Bar> execute 'exec '!clear; python3' shellescape(@%, 1)' <Bar> startinsert<CR>"})


