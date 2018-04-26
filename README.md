Personnal dotfiles for Archlinux

* Tmux
  Terminal multiplexer
* Rofi
  Application launcher (replacement for dmenu)
  - To add applications to the menu entries, you can add a <app>.desktop file
    in `~/.local/share/applications`
* Bspwm
  Tiling window manager
* Sxhkd
  Input manager for bspwm
* Polybar
  Bar with easy configuration
* Dunst
  Notification server with icon and transparency support
  [Service might crash when no display environment variable is accesible](https://github.com/dunst-project/dunst/issues/347)

* Crontab
  There are no crontab implementation installed by default on Arch.
  The recommanded tool to manage recurring chronological tasks is [Systemd's
  Timers system](https://wiki.archlinux.org/index.php/Systemd/Timers).
  Install a `<job>.timer` systemd Unit file as well as a `<job>.service` to
  `~/.config/systemd/user/` and start the `.timer` job with:
  `systemctl --user enable timer`.
