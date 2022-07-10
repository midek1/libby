# libby

`libby` is a simple cli tool to quickly download books from Library Genesis.

## Requirements

- pup
- curl
- wget
- fzf
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
  --to-kindle: convert file to .mobi and send to $KINDLE_EMAIL via mutt/neomutt
  <query>: the query to search for
```

# Things to consider

- By default, libby filters out all filtypes except ePUBs and PDFs.
- libby assumes $HOME/books (lowercase) exists and saves all downloads there.
