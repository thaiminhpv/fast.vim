# Fast.vim

### How to fix `Ctrl + P` not working in Visual Studio Code

1. Press `Ctrl + Shift + P` to open the command palette.
2. Type `Preferences: Open Keyboard Shortcuts (JSON)` and select it.
3. Add the following keybinding to the JSON file:

```json
{
    "key": "ctrl+p",
    "command": "-extension.vim_ctrl+p",
    "when": "editorTextFocus && vim.active && vim.use<C-p> && !inDebugRepl || vim.active && vim.use<C-p> && !inDebugRepl && vim.mode == 'CommandlineInProgress' || vim.active && vim.use<C-p> && !inDebugRepl && vim.mode == 'SearchInProgressMode'"
},
```
