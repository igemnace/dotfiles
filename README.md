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
- GTK 2.0
- GTK 3.0
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

Just run `./install`. This will automatically symlink all the dotfiles in the
`cfg` directory into your home directory, following the proper structure. Any
pre-existing dotfiles are backed up (`.xinitrc` to `.xinitrc~`).

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public
domain.

## Screenshots

![clean](http://i.imgur.com/J1nTsCE.png "clean")

![org session - vim with notes.md + todo.txt, mutt, shell access](http://i.imgur.com/WVopF3C.png "org session - vim with notes.md + todo.txt, mutt, shell access")

![hack session -vim, zsh](http://i.imgur.com/3ztQsik.png "hack session -vim, zsh")

![tinker session - zsh with git prompt flags](http://i.imgur.com/NV9S2ro.png "tinker session - zsh with git prompt flags")

![todo.txt helper script - add todo](http://i.imgur.com/p6P629f.png "todo.txt helper script - add todo")

![todo.txt helper script - mark as done with fzf](http://i.imgur.com/nMnxMaQ.png "todo.txt helper script - mark as done with fzf")

![rofi](http://i.imgur.com/erFiEBN.png "rofi")

![vivaldi browser - quick commands bar](http://i.imgur.com/jOT9bBn.png "vivaldi browser - quick commands bar")

![vivaldi browser - bookmarks panel](http://i.imgur.com/0vZWKb5.png "vivaldi browser - bookmarks panel")

![screenfetch](http://i.imgur.com/fAzL84l.png "screenfetch")
