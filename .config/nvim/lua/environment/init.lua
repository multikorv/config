if vim.loop.os_uname().sysname == 'Linux' then
    print('Setup linux environment')
    HOME = vim.env.HOME
    CONFIG_FILES = HOME .. '/.config/nvim'
else
    print('Setup windows environment')
    HOME = vim.env.USERPROFILE
    CONFIG_FILES = HOME .. '/AppData/Local/nvim'
end

