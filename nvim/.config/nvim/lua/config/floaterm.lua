-- lua/config/floatterm.lua
local M = {}

M.state = {
    buf = nil,     -- terminal buffer (reused)
    win = nil,     -- window currently showing terminal
    layout = nil,  -- saved winlayout() tree
    wininfo = nil, -- saved per-win { buf, view, wo }
    curwin = nil,  -- previously focused win
}

local function valid_win(win)
    return win and vim.api.nvim_win_is_valid(win)
end

local function valid_buf(buf)
    return buf and vim.api.nvim_buf_is_valid(buf)
end

local function ensure_terminal()
    if M.state.buf and not valid_buf(M.state.buf) then
        M.state.buf = nil
    end

    if not M.state.buf then
        local buf = vim.api.nvim_create_buf(false, true) -- unlisted scratch
        M.state.buf = buf

        vim.bo[buf].bufhidden = "hide" -- keep job alive
        vim.bo[buf].swapfile = false

        vim.api.nvim_buf_call(buf, function()
            vim.fn.termopen(vim.o.shell)
        end)
    end

    return M.state.buf
end

local function configure_term_window(win)
    vim.wo[win].number = false
    vim.wo[win].relativenumber = false
    vim.wo[win].signcolumn = "no"
    vim.wo[win].wrap = false
end

-- Save current tab layout + buffers + views + window options
local function save_layout()
    M.state.layout = vim.fn.winlayout()
    M.state.curwin = vim.api.nvim_get_current_win()
    M.state.wininfo = {}

    for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
        local ok_buf, buf = pcall(vim.api.nvim_win_get_buf, win)
        if ok_buf then
            local view = vim.api.nvim_win_call(win, function()
                return vim.fn.winsaveview()
            end)

            -- window-local options we touch / that commonly matter
            local wo = {
                number = vim.wo[win].number,
                relativenumber = vim.wo[win].relativenumber,
                signcolumn = vim.wo[win].signcolumn,
                wrap = vim.wo[win].wrap,
            }

            M.state.wininfo[win] = { buf = buf, view = view, wo = wo }
        end
    end
end

-- Rebuild a saved winlayout tree in the current tabpage
local function rebuild_layout(node, target_win, leaf_assignments)
    local kind = node[1]

    if kind == "leaf" then
        local old_win = node[2]
        leaf_assignments[target_win] = old_win
        return
    end

    local children = node[2]
    local wins = { target_win }

    -- winlayout():
    -- "row" => windows side-by-side (vsplit)
    -- "col" => windows stacked (split)
    local split_cmd = (kind == "row") and "vsplit" or "split"

    vim.api.nvim_set_current_win(target_win)

    for i = 2, #children do
        vim.cmd(split_cmd)
        table.insert(wins, vim.api.nvim_get_current_win())
    end

    for i, child in ipairs(children) do
        rebuild_layout(child, wins[i], leaf_assignments)
    end
end

local function restore_layout()
    if not M.state.layout or not M.state.wininfo then
        return
    end

    -- Start from a single window
    vim.cmd("only")
    local root = vim.api.nvim_get_current_win()

    local leaf_assignments = {}
    rebuild_layout(M.state.layout, root, leaf_assignments)

    -- Put buffers + views + window-local options back into the newly-created windows
    for new_win, old_win in pairs(leaf_assignments) do
        local info = M.state.wininfo[old_win]
        if info and valid_win(new_win) then
            if valid_buf(info.buf) then
                pcall(vim.api.nvim_win_set_buf, new_win, info.buf)
            end

            if info.wo then
                vim.wo[new_win].number = info.wo.number
                vim.wo[new_win].relativenumber = info.wo.relativenumber
                vim.wo[new_win].signcolumn = info.wo.signcolumn
                vim.wo[new_win].wrap = info.wo.wrap
            end

            if info.view then
                pcall(vim.api.nvim_win_call, new_win, function()
                    vim.fn.winrestview(info.view)
                end)
            end
        end
    end

    -- Return focus to previous window if possible
    if valid_win(M.state.curwin) then
        pcall(vim.api.nvim_set_current_win, M.state.curwin)
    end

    -- Clear saved state
    M.state.layout = nil
    M.state.wininfo = nil
    M.state.curwin = nil
end

function M.toggle()
    -- If terminal is currently shown, close it and restore layout
    if valid_win(M.state.win) then
        pcall(vim.api.nvim_win_close, M.state.win, true)
        M.state.win = nil
        restore_layout()
        return
    end

    local buf = ensure_terminal()

    -- Save current layout, then go fullscreen within this tab
    save_layout()
    vim.cmd("only")

    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_buf(win, buf)
    configure_term_window(win)

    M.state.win = win

    vim.cmd("startinsert")
end

return M
