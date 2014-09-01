" Vim filetype plugin
" Language: TE (SELinux Type Enforcement Policy)
" Authors: Lukas Zapletal <lzap+git@redhat.com>
"
if exists("b:did_ftplugin_te")
    finish
endif
let b:did_ftplugin_te = 1

let s:plugin_path = expand("<sfile>:p:h:h")

if !exists("g:ctags_script")
  let g:ctags_script = s:plugin_path . "/bin/create-selinux-ctags"
endif

function! SelinuxCtags()
  execute "!" . g:ctags_script
endfunction

function! SelinuxCtagsSilent()
  execute "silent !" . g:ctags_script
endfunction
