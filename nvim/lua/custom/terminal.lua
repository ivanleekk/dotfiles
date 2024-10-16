local term_buf = 0
local term_win = 0

function TermToggle(height)
    if term_win ~= 0 and vim.api.nvim_win_is_valid(term_win) then
        -- If the terminal window is already open, hide it
        vim.api.nvim_win_close(term_win, true)
        term_win = 0
    else
        -- Create a new terminal window
        vim.cmd('botright new')
        vim.cmd('resize ' .. height)

        local ok = pcall(vim.cmd, 'buffer ' .. term_buf)
        if not ok then
            -- If the terminal buffer doesn't exist, create a new terminal
            vim.fn.termopen(vim.fn.getenv('SHELL'), { detach = 0 })
            term_buf = vim.api.nvim_get_current_buf()
            vim.opt_local.number = false
            vim.opt_local.relativenumber = false
            vim.opt_local.signcolumn = 'no'
        end

        -- Switch to insert mode
        vim.cmd('startinsert!')
        term_win = vim.api.nvim_get_current_win()
    end
end
