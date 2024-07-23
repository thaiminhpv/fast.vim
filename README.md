<h2 align="center">fast.vim</h2>
<p align="center">A cross-platform keybinding that x10 your coding speed</p>

<p align="center">
<img alt="vimfast" src="https://raw.githubusercontent.com/thaiminhpv/blogs/main/How-To-Code-30-times-faster-with-vimfast/resources/gif-guides/vimfast.gif"/>
</p>

- [Installation](#installation)
- [How to use](#how-to-use)
- [FAQs](#faqs)
  - [How to fix `Ctrl + P` not working in Visual Studio Code](#how-to-fix-ctrl--p-not-working-in-visual-studio-code)
- [Related links](#related-links)

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

## How to use

1. Use `Ctrl + D`, `Ctrl + U` to scroll up and down, use `Ctrl + P` to navigate between files.
2. After your needed edit lines comes within your screen view, use `<number> + j/k` to move the cursor to the line you want.
3. Use either:
   - `cw` to change a **word**
   - `c"`, `cl` to change a **"double quoted string"**
   - `c'` to change a **"single quoted string"**
   - `cb`, `ch` to change a **()** block
   - `cd` to change a **[]** block
   - `cq`, `cB`, `cv` to change a **{}** block

   For more detailed, see configuration at [vscode.vim#Line1->10](https://github.com/thaiminhpv/fast.vim/blob/8aa781a83c2ddb4a47bee80dc69617c57d2e047a/vscode.vim#L1-L10)

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

## Related links

- Blog guide: [How To Code 10 times faster with VimFast](https://viblo.asia/p/code-nhanh-hon-10-lan-voi-vimfast-GyZJZj7ZJjm)
- Slide: [Presentation](https://docs.google.com/presentation/d/19igSXmitilryQK-UNCaznCEfXaGaUSZY/edit?usp=sharing&ouid=106107220431122775778&rtpof=true&sd=true)
