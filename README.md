# libby

`libby` is a simple cli tool to quickly download books from Library Genesis.

## Requirements

- [`pup`](https://github.com/ericchiang/pup) (`yay -S pup`)
- [`fzf`](https://github.com/junegunn/fzf) (`sudo pacman -S fzf`)
- curl
- wget
- mut/neomutt (optional)
- rofi (optional)
- ebook-convert (optional)

## Installation

Run the following:

```bash
git clone https://github.com/carterprince/libby
sudo cp libby/libby /usr/local/bin/
```

## Usage

Run `libby` with no arguments for help:

```
Usage: libgen [--rofi] [--mirror <num>] [--no-view] [--to-kindle] <query>
  --rofi: use rofi to select a book (default is fzf)
  --mirror <num>: use an alternative libgen mirror (default: 3)
  --no-view: don't view the result
  --to-kindle: convert file to .mobi and send to $KINDLE_EMAIL via mutt/neomutt (implies --no-view)
  --to-usb: copy file to $USB via rsync (implies --no-view)
  <query>: the query to search for
```

# Things to consider

- By default, `libby` filters out all filetypes except ePUBs and PDFs.
- By default, `libby` assumes `$HOME/books` (lowercase 'b') exists and saves all downloads there. This can be changed by adding
```zsh
export LIBBY_DIR="/foo/bar"
```
to your shell profile (`.zprofile` or `.bash_profile`).

# Why I made this

Because everything else was too slow, tried to do too much, or no longer worked. The whole point of having a cli is it's faster and more convenient than navigating to the download manually in your browser.
