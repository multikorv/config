if vim.loop.os_uname().sysname == 'Linux' then
    HOME = vim.env.HOME
    CONFIG_FILES = HOME .. '/.config/nvim'
else
    HOME = vim.env.USERPROFILE
    CONFIG_FILES = HOME .. '/AppData/Local/nvim'
end

