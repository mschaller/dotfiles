# Basic Setup

## vim / nvim

```bash
neovim
python-pynvim
```

### tagbar

```bash
ctags
```

### coc.nvim

```bash
pacman -S nodejs npm
```

in nvim

```vim
:CocInstall coc-snippets coc-sh coc-markdownlint coc-xml coc-json coc-yaml coc-actions
:CocInstall coc-go
:CocInstall coc-java
:CocInstall coc-html coc-css coc-cssmodules

```

## AUR

### yay

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## xorg-setup

```bash
urxvt
```

### i3

```bash
rofi
dmenu
numlockx
feh
gsimplecal
```

### redshift

```bash
redshift
systemctl --user enable redshift-gtk
```

### tools

```bash
flameshot
pidgin
menutray (AUR)
cherrytree
```
