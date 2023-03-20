-- do not take over text fields automatically, only when shortcut is pressed
vim.g.firenvim_config = { localSettings = { ['.*'] = { takeover = 'never' } } }
