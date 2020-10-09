# SELinux Vim plugin

Helps SELinux policy maintainers to navigate the m4 mess.
[Upstream site](https://github.com/lzap/vim-selinux).

What does it do?

* .te/.if syntax highlighting (based on m4 syntax)
* script to generate ctags for your project (and system interfaces)
* Vim function to call the script (can be bound to a key)

Tools needed:

* Vim
* `ctags` (Exuberant Ctags recommended but any version will work)
* SELinux policy sources installed in `/usr/share/selinux/devel/include/`

## Installation (via Plug - recommended)

Installation via [Plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'lzap/vim-selinux'
```

## Installation (via Vundle)

Installation via [vundle](https://github.com/gmarik/vundle):

```vim
Bundle 'lzap/vim-selinux'
```

## Configuration

There is no configuration really, all you need to make sure is installing base
SELinux policy. For Fedora and Red Hat system this would be:

    # yum -y install selinux-policy-devel

or


    # dnf -y install selinux-policy-devel

Then call a script called
[create-selinux-ctags](https://github.com/lzap/vim-selinux/blob/master/bin/create-selinux-ctags)
in the project directory. It will create `TAGS` file in the current working
directory. Then use ctags navigation in Vim to browse and jump interfaces and
support macros within the project itself as well as SELinux base policy
installed in `/usr/share/selinux/devel/include/`.

There is a helper called `SelinuxCtags` and `SelinuxCtagsSilent` to do this
from Vim. This can be bound to a key if you want to update TAGS as you write
our code:

```vim
map <Leader>x :call SelinuxCtagsSilent()<CR>
```

The function called `SelinuxCtagsSilent` has silenced output so no terminal is
shown for a smooth experience.

## Tip - add tags file to global git ignore

Tired of adding tags file into individual `.gitignore` files for each project?
Do this:

    git config --global core.excludesfile '~/.cvsignore'
    echo tags >> ~/.cvsignore
    echo TAGS >> ~/.cvsignore

Thanks Tim Pope for this tip. Alternatively you can call tell ctags to create
TAGS in `.git/` directory and configure Vim to read tags from there as well.

## Credits

* [Lukas Zapletal](http://lukas.zapletalovi.com) is the author and maintainer
* Thomas Bleher wrote the initial .te syntax file
* Miroslav Grepl wrote the ctags regexps for SELinux support

## License

Vim license
