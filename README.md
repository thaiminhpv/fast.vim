# Fast.vim

![demo-gif](https://raw.githubusercontent.com/thaiminhpv/blogs/main/How-To-Code-30-times-faster-with-vimfast/resources/gif-guides/vimfast.gif)

## Installation

<details open>
<summary> <h3>VSCode</h3> </summary>

1. Press `Ctrl + P` to open the quick open dialog, type `ext install vscodevim.vim` and press enter.
2. Press `Ctrl + Shift + P` to open the command palette, type `Preferences: Open User Settings (JSON)` and press enter.
3. Add the [following settings](./settings.json) to the JSON file:

    ```json
    {
      "vim.vimrc.enable": true,
      "vim.autoindent": true,
      "vim.vimrc.path": "~/vscode.vim",
      "vim.handleKeys": {
          "<C-A>": false,
          "<C-Y>": false,
          "<C-O>": false,
          "<C-I>": false
      },
      "editor.lineNumbers": "relative",
      "notebook.lineNumbers": "on"
    }
    ```

4. Copy the [vscode.vim](./vscode.vim) file to `~/vscode.vim` for Linux or `%USERPROFILE%\vscode.vim` for Windows.

Done!

</details>

<details open>
  <summary><h3>IntelliJ (JetBrains Products)</h3></summary>

1. Install the IdeaVim plugin.
2. Copy the [.ideavimrc](./.ideavimrc) file to `~/.ideavimrc` for Linux or `%USERPROFILE%\.ideavimrc` for Windows.

Done!

</details>

<details>
  <summary><h3>NeoVim</h3></summary>

If you are reading this part, that means you are already a Vim user, so
you should already know what to do after looking at [neo.vim](./neo.vim).

</details>

## FAQs

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
