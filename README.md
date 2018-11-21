# Personnal dotfiles for Archlinux

## General Application Notes

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
  The cpufreq module needs the cpupower package to run
* Dunst
  Notification server with icon and transparency support
  [Service might crash when no display environment variable is accesible](https://github.com/dunst-project/dunst/issues/347)

* Crontab
  There are no crontab implementation installed by default on Arch.
  The recommanded tool to manage recurring chronological tasks is [Systemd's
  Timers system](https://wiki.archlinux.org/index.php/Systemd/Timers).
  Install a `<job>.timer` systemd Unit file as well as a `<job>.service` to
  `~/.config/systemd/ user/` and start the `.timer` job with:
  `systemctl --user enable timer`.

* RAW Files

  - GIMP
    To enable RAW image editing with GIMP, install `nufraw` which adds support.

  - Nautilus
    RAW/ARW files don't have thumbnails natively under Nautilus.
    Install `ufraw-thumbnailer` to add thumbnail generation for these file types.

* Faster `grep`
  I use `ag` as a replacement for `grep`.
  It has the same features, but works faster, and has a nicer output.
  On Archlinux `ag` is found in the Community package named
  `the_silver_searcher`

## Vim Notes

* Code Completion
  * Rust
	install [`racer`](https://github.com/racer-rust/racer), a code completion
	utility.

* Linting
  * Rust
	I'm using [`ALE`](https://github.com/w0rp/ale) as a linting engine across
	languages.

	For rust I'm using the `rls` (_Rust Language Server_) as a linter, which gives
	me incremental compilation, as long as the project is a Cargo project
