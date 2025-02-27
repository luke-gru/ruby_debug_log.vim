# ruby\_debug\_log.vim

This is Vim syntax highlighting for ruby debug log files. It's meant to be used by people
working on the Ruby language, using the debug log facility.

![highlighted text](./debug.rdl.png 'Vim highlighting')

## Installation

Save your ruby debug log with the extension '.rdl' and if this plugin is installed correctly
in vim/nvim then it should work.

## Customizing the Colors

If you're using nvim and want to change the colours around, then you can use the `:Inspect`
command to see what the word under your cursor is mapped to in terms of highlight group.
If you're using vim, you can look online for `SynStack()` or `SynGroup()` functions that
do the same.

## Further Customization

If you want to customize it further, take a look at `:help syntax` and `:help pattern`. If you
want to really get fancy, you can also read `:h usr_44.txt`.
