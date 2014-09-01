# SELinux Vim plugin

Helps SELinux policy maintainers to see through the m4 crap.
[Upstream site](https://github.com/lzap/vim-selinux).

What does it do?

* .te/.if syntax highlighting (based on m4 syntax)
* utility function to create ctags for your project (and system interfaces)

## Installation

Recommended installation with [vundle](https://github.com/gmarik/vundle):

## How to use

```vim
Bundle 'lzap/vim-selinux'
```
## Configuration

If you want to use ctags, make sure you have your SELinux development files
installed (the plugin expects them in `/usr/share/selinux/devel/include/`) and
map the `SelinuxCtags` function to some combination:

```vim
map <Leader>x :call SelinuxCtags()<CR>
```

There is also a function called `SelinuxCtagsSilent` which has silenced output.

## Tip - add tags file to global git ignore

Tired of adding tags file into individual `.gitignore` files for each project?
Do this:

  git config --global core.excludesfile '~/.cvsignore'
  echo tags >> ~/.cvsignore

Thanks Tim Pope for this tip.

## Credits

This plugin is maintained by [Lukas Zapletal](http://lukas.zapletalovi.com).

Initial version of the .te syntax was written by Thomas Bleher.

Miroslav Grepl wrote the ctags regexps for SELinux support.

## License

Vim license
