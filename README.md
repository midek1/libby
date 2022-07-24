# libby

`libby` is a simple CLI tool to quickly download books from [Library Genesis](https://libgen.is/).

## Demo

![output](https://user-images.githubusercontent.com/11081492/180638963-17bc20ca-e25e-47cc-8839-dd826be2eeef.gif)

## Installation

`libby` is available on the [AUR](https://aur.archlinux.org/) as [`libby-git`](https://aur.archlinux.org/packages/libby-git). If you have [`yay`](https://github.com/Jguer/yay), you can install `libby` with:

```sh
yay -S libby-git
```

Or, to install it manually from this repo, run the following:

```bash
git clone https://github.com/carterprince/libby
sudo cp libby/libby /usr/bin/
```

## Requirements

### Necessary

When `libby` is installed from the AUR, there is no need to install these manually.

- [`pup`](https://github.com/ericchiang/pup) (`yay -S pup`)
- [`fzf`](https://github.com/junegunn/fzf) (`sudo pacman -S fzf`)
- `recode` (`sudo pacman -S recode`)
- [`jq`](https://github.com/stedolan/jq) (`sudo pacman -S jq`)
- curl
- wget

### Optional

If you want the functionality these provide in `libby`, you have to install them yourself.

- mutt/neomutt (optional)
- rofi (optional)
- calibre (optional)

## Usage

Run `libby` with no arguments for help:

```
Usage: libby [--rofi] [--mirror <num>] [--no-view] [--to-kindle] <query>
  --rofi: use rofi to select a book (default is fzf)
  --mirror <num>: use an alternative libgen mirror (default: 3)
  --no-view: don't view the result
  --to-kindle: convert file to .mobi and send to $KINDLE_EMAIL via mutt/neomutt (implies --no-view)
  --to-usb: copy file to $USB via rsync (implies --no-view)
  <query>: the query to search for
```

## Things to consider

- `libby` filters out all filetypes except ePUBs and PDFs.
- By default, `libby` creates `$HOME/books` (lowercase 'b') if it does not already exist and saves all downloads there. This can be changed by adding
```zsh
export LIBBY_OUTPUT_DIR="/foo/bar"
```
to your shell profile (`.zprofile` or `.bash_profile`).

- By default, `libby` opens the downloaded file with `xdg-open`. This command can be changed by adding
```zsh
export LIBBY_VIEWER="foobar"
```
to your shell profile (`.zprofile` or `.bash_profile`).

## Why I made this

Because everything else was too slow, tried to do too much, or no longer worked. The whole point of having a cli is it's faster and more convenient than navigating to the download manually in your browser.
