if vim.loop.os_uname().sysname == 'Linux' then
    print('Setup linux environment')
    HOME = '$HOME'
    CONFIG_FILES = HOME .. '/.config/nvim'
else
    print('Setup windows environment')
    HOME = '%USERPROFILE%'
    CONFIG_FILES = HOME .. '/Local/nvim'
end

