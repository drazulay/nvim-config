# nvim-config

A minimalist neovim setup that uses neovim's native Language Server Protocol interface to provide the intuitive code completion and inspection we know and love.

## Installing

```
git clone https://github.com/drazulay/nvim-config.git ~/.config/nvim
cd ~/.config/nvim
git submodule update --init
```

## Issues

- Eleline likes to play houdini. It disappears or blanks after navigating between files. It also seems to occur when the LSP client updates the buffer. This also happened with lightline, so the problem probably might be tricky. I'm looking for a solution.
