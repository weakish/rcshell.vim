This is a syntax file for the rc shell scripting language.

## Compatibility

For unix (not plan9) users, there are two slightly different versions of rc available.

One is [plan9port][plan9port] and [9base][9base]'s version and the other is Byron Rakitzis' (as packaged by Debian and other *nix software distribution).

This syntax file is compatible with both versions.

[plan9port]: https://github.com/9fans/plan9port
[9base]: http://tools.suckless.org/9base

This syntax is comptible with Vim 5.7-6.4.

## Install

If you use [Vundle](https://github.com/gmarik/vundle), add the following line to your `~/.vimrc`:

```vim
Plugin 'weakish/rcshell.vim'
```

Then run inside Vim:

```vim
:so ~/.vimrc
:PluginInstall
```

If you use [Pathogen](https://github.com/tpope/vim-pathogen), do this:

```sh
cd ~/.vim/bundle
git clone https://github.com/weakish/rcshell.vim.git
```

If you are not using any package manager, download the [tarball](https://github.com/weakish/rcshell.vim/archive/master.tar.gz) and do this:

```sh
cd ~/.vim
tar --strip=1 -zxf path/to/master.tar.gz
```

## Configuration

By default, `.rcrc*`, `rcrc` and files starting with an rc shebang (`#!/something/.../rc`) will be highlighted.

### Add rc shell syntax to other file extensions

If you want to add other file extensions, you can add the following lines in `.vimrc`:

```vim
au BufRead,BufNewFile *.your_extension set filetype=rcshell
```

For example, you could write

```
au BufRead,BufNewFile *.rc set filetype=rcshell
```

to catch all files with an `.rc` extension. 

### Use another syntax for files which this extension detects.

If you want to use `.rcrc*`, `rcrc` or `*.rc` for another file type, you can specify the file type in `.vimrc`.

For example, if you want to use `.rc` for M$ Resource file:

```vim
au BufRead,BufNewFile *.rc set filetype=rc
```

(Confusingly, `rc` is the name of the default filetype in vim.)

### Other

You can also use `setfiletype` (without a space) to set the filetype if it has not already been set:

```vim
au BufRead,BufNewFile *.your_extension setfiletype rcshell
```
See `:help filetype` and `:help setfiletype` for more information.

### Disable this syntax file.

If you want to disable this syntax file, add the following line in your `.vimrc`:

```vim
let g:loaded_rcshell = 1
```

## Repository

- **Repository:** http://github.com/weakish/rcshell.vim
- **Issue tracker:** https://github.com/weakish/rcshell.vim/issues

## Credit

This is based on [Andy Spencer][andy]'s work for the plan9 rc shell.
There is a minor trade off for maintain compatibility with two versions of rc mentioned above:
less powerful `(ba)sh like substitution` syntax error detection.

[andy]: https://github.com/Andy753421

## License

Public domain.

## Tips

This is not related to the syntax directly, but I think users who code with the rc shell script in Vim may be interested:

If you want to use `rc` as the embedded shell in vim,
add the following lines to your .vimrc:

```vim
set shell=/usr/bin/rc\ -l
"  or /bin/rc or /usr/local/bin/rc or /opt/local /bin/rc, etc
set shellcmdflag=-c
set shellpipe=>[2=1]\|\ tee
set shellredir=>%s\ >[2=1]
```
