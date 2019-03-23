echo ssoff

set DOTFILES_PATH=%~dp0
set VSCODE_PATH=%APPDATA%\Code\User

del "%VSCODE_PATH%\settings.json"
mklink "%VSCODE_PATH%\settings.json" "%DOTFILES_PATH%\.vscode\settings.json"

del "%VSCODE_PATH%\keybindings.json"
mklink "%VSCODE_PATH%\keybindings.json" "%DOTFILES_PATH%\.vscode\keybindings.json"
