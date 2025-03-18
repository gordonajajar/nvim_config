<h1 align="center">Lightweight Neovim Configuration<br> 

<a href="https://www.lua.org/">
<img
    alt="Lua"
    src="https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white">
</a>
<a href="https://github.com/neovim/neovim">
<img
    alt="Neovim"
    src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white">
</a>
</h1>

## About

Fast and lightweight, highly customalisable Personalised Development Environment using Neovim. 

## Install [Neovim 0.10](https://github.com/neovim/neovim/releases/tag/v0.10.0)

### Mac
```sh
brew install neovim
```

### Linux

| Distribution | Command |
| ------------ | ------- |
| Arch Linux | `sudo pacman -S neovim` |
| Fedora | `sudo dnf install neovim` |
| Debian/Ubuntu | Neovim's 0.10 may not be available in Debian/Ubuntu's repositories. I recommend installing from source: [official repository](https://github.com/neovim/neovim/blob/master/INSTALL.md). |

### Windows
Install WSL2(Windows Subsystem for Linux) and follow the Linux instructions.

## Required Dependencies
- gcc/clang
- [ripgrep](https://github.com/BurntSushi/riprep) (for telescope fuzzyfinder)
- [Nerd Fonts](https://www.nerdfonts.com/) - e.g JetBrainsMono: 
> ```sh
> wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip 
> && cd ~/.local/share/fonts 
> && unzip JetBrainsMono.zip
> && rm JetBrainsMono.zip 
> && fc-cache -fv
> ```

## Install the config

Make sure to remove or move your current `nvim` config directory.

```sh
mv ~/.config/nvim/ ~/.config/nvim-bak/
git clone https://github.com/sadiksaifi/nvim.git ~/.config/nvim
```
> Run `nvim` and wait for the plugins to be installed

## Keymaps
General keymaps can be found in core/keymaps.lua. Plugin-specific keymaps are defined in individual plugin files in plugins/, but are
also displayed in core/keymaps.lua.

## Acknowledgement
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [sadiksaifi](https://github.com/sadiksaifi)


