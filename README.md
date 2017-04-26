# igemnace's dotfiles

These are the miscellaneous dotfiles for most of the themed elements in my
desktop (i3, rofi, etc).

My zsh, tmux, and vim configs aren't here. Those configs are much more than just
styling, so they have their own repos. If you want to check them out, see the
following repos:

- [zsh-config](https://github.com/igemnace/zsh-config)
- [tmux-config](https://github.com/igemnace/tmux-config)
- [vim-config](https://github.com/igemnace/vim-config)

My custom todo.txt helper script also isn't here, since it's not style-related.
If you want to check it out, see the following repo:

- [todotxt-helper](https://github.com/igemnace/todotxt-helper)

## Pre-Installation

Make sure that your machine satisfies the following:

- Is using GNU/Linux (scripts are untested on other UNIX systems and will
  flat-out fail on Windows)
- Has env and bash (required by install script)

The dotfiles are for the following programs:

- Xorg
- Xmodmap
- Xbindkeys
- Xcape
- ALSA with PulseAudio
- light (for brightness)
- i3
- i3bar
- i3status
- i3lock
- feh
- rxvt-unicode
- rofi

You are not required to install and use all these programs, just the ones you
want.

## Installation

Just run `install.sh`. This will automatically symlink all the dotfiles in the
`cfg` directory into your home directory, following the proper structure. Any
pre-existing dotfiles are backed up (`.xinitrc` to `.xinitrc~`).

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public
domain.
