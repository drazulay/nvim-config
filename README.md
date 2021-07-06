# nvim-config

A minimalist neovim setup that uses neovim's native Language Server Protocol interface to provide the intuitive code completion and inspection we know and love.

## Installing

```
git clone https://github.com/drazulay/nvim-config.git ~/.config/nvim
cd ~/.config/nvim
git submodule update --init
```

## Usage

The leader key is the backtick: __\`__

Telescope is your friend:

```
``    -> Open Telescope in file mode
`b    -> Open Telescope in buffer mode
`g    -> Open Telescope in live-grep mode
`h    -> Open Telescope in help-tags mode
```
Use `:LspInstall <client>` to install native LSP clients.

Happy coding!

## Issues
- Unfortunately it seems `mattn/vim-lsp-settings` does not know how to work with neovim's native clients yet, so you'll have to setup LSP servers manually for now. 

- Eleline likes to play houdini. It disappears or blanks after navigating between files. It also seems to occur when the LSP client updates the buffer. This also happened with lightline, so the problem probably might be tricky.
