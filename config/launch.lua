local wezterm = require('wezterm')
local platform = require('utils.platform')

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh.exe', '-NoLogo' }
   options.launch_menu = {
      { label = 'PowerShell Core',   args = { 'pwsh.exe', '-NoLogo' } },
      { label = 'Windows PowerShell', args = { 'powershell.exe', '-NoLogo' } },
      { label = 'Command Prompt',    args = { 'cmd' } },
      { label = 'WSL (Ubuntu)',      args = { 'wsl.exe', '~' } },
   }
elseif platform.is_mac then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Bash',    args = { 'bash', '-l' } },
      { label = 'Fish',    args = { '/opt/homebrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh',     args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { 'fish', '-l' } },
      { label = 'Zsh',  args = { 'zsh', '-l' } },
   }
end

return options
