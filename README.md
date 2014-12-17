This is a syntax file for the rc shell scripting language.  

## Compatibility

For unix (not plan9) users, there are two slightly different rc available.
One is [plan9port][plan9port] and [9base][9base]'s version
and the other is Byron Rakitzis'
(as packaged by Debian and other *nix software distribution).

This syntax file is compatible with both versions.

[plan9port]: https://github.com/9fans/plan9port
[9base]: http://tools.suckless.org/9base

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

## Repository

- **Repository:** http://github.com/weakish/rcshell.vim
- **Issue tracker:** https://github.com/weakish/rcshell.vim/issues

## Credit

This is based on [Andy Spencer][andy]'s work for the plan9 rc shell.
There is a minor trade off for maintain compatibility with two versions of rc mentioned above:
less powerful `(ba)sh like substitution` syntax error detection.

[andy]: https://github.com/Andy753421 

## Tips 

This is not related to syntax directly, but I think users who codes rc shell script in Vim may have interests.

If you want to use `rc` as the embedded shell in vim,
add the following lines to your .vimrc:

```vim
set shell=/usr/bin/rc\ -l
"  or /bin/rc or /usr/local/bin/rc or /opt/local /bin/rc, etc
set shellcmdflag=-c
set shellpipe=>[2=1]\|\ tee
set shellredir=>%s\ >[2=1]
```
