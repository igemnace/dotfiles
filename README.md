# igemnace's dotfiles

These are the miscellaneous dotfiles for most of the themed elements in my
desktop (i3, rofi, etc).

My zsh, tmux, and vim configs aren't here. Those configs are much more than just
styling, so they have their own repos. If you want to check them out, see the
following repos:

- [zsh-config](https://github.com/igemnace/zsh-config)
- [tmux-config](https://github.com/igemnace/tmux-config)
- [vim-config](https://github.com/igemnace/vim-config)

I'm also starting out with Emacs. My Emacs config isn't as rich as the above,
but it's still hosted on its own repo:

- [emacs-config](https://github.com/igemnace/emacs-config)

My custom todo.txt helper script also isn't here, since it's not style-related.
If you want to check it out, see the following repo:

- [todotxt-helper](https://github.com/igemnace/todotxt-helper)

## Pre-Installation

Make sure that your machine satisfies the following:

- Has env, bash, and GNU cp (required by install script)

The dotfiles are for the following programs:

- ALSA with PulseAudio
- cmus
- feh
- GTK 2.0
- GTK 3.0
- i3
- i3bar
- i3lock
- i3status
- light (for brightness)
- rofi
- rxvt-unicode
- Xbindkeys
- Xcape
- Xmodmap
- Xorg

You are not required to install and use all these programs, just the ones you
want.

## Installation

Just run `./install` from the repository's root directory. This will
automatically symlink all the dotfiles in the `cfg` directory into your home
directory, following the proper structure. Any pre-existing dotfiles are backed
up (`.xinitrc` to `.xinitrc~`).

## Licensing

If anyone else sees this and wants to use it, go ahead.

This project is licensed under the Unlicense and is entirely under public
domain.

## Screenshots

Clean desktop:
![wallpaper](https://user-images.githubusercontent.com/22214206/30312744-63cfe37c-97cd-11e7-8a8c-4951465b8994.png)

Hack session (working on Lisp koans with Vim and SBCL):
![hack](https://user-images.githubusercontent.com/22214206/30312735-6392309a-97cd-11e7-9a79-a93b06223ac2.png)

Emacs (working on the same Lisp koans project):
![emacs](https://user-images.githubusercontent.com/22214206/30312734-63920a48-97cd-11e7-845d-26b498e83ce0.png)

Org session (Vimwiki top left, Todo.txt bottom left, Mutt top right, shell
access bottom right):
![mail todo](https://user-images.githubusercontent.com/22214206/30312738-6394ca58-97cd-11e7-8b19-47e4ec83a775.png)

My Todo.txt helper script (adding a todo):
![todo-add](https://user-images.githubusercontent.com/22214206/30312743-63cb43bc-97cd-11e7-8106-ca5696eefae8.png)

My Todo.txt helper script (marking a todo as done with FZF):
![todo-fzf](https://user-images.githubusercontent.com/22214206/30312742-63ca4520-97cd-11e7-8d1c-e8bbf31ff9a7.png)

Entertainment session (playing music with cmus and cli-visualizer):
![music](https://user-images.githubusercontent.com/22214206/30312739-63a6c7bc-97cd-11e7-9980-03b773a78dbe.png)

Games workspace (playing Nethack on cool-retro-term):
![crt-nethack](https://user-images.githubusercontent.com/22214206/30312736-63929dc8-97cd-11e7-8129-adf3b95e514f.png)

Vivaldi (running Quick Commands):
![vivaldi-quick-commands](https://user-images.githubusercontent.com/22214206/30312741-63c9fdfe-97cd-11e7-9390-86747399c1dc.png)

Vivaldi (opening side panel):
![vivaldi-side-panel](https://user-images.githubusercontent.com/22214206/30312740-63c9bd1c-97cd-11e7-82b1-871a0ad34b95.png)
