vim-ruby-doc is a little plugin that helps you to look up Ruby/Rails/Rspec
documentation using the good [http://apidock.com/](http://apidock.com/).

If you want something similar for jQuery API documentation see
[vim-jquery-doc](http://github.com/lucapette/vim-jquery-doc).


Installation
------------

I strongly recommend installing [pathogen.vim](https://github.com/tpope/pathogen.vim).

    cd ~/.vim/bundle
    git clone git://github.com/lucapette/vim-ruby-doc.git

Or you can unzip it in your `~/.vim` directory.

How to use it
-------------

When your cursor is on something you would look up on apidock, type:

- `RB` for Ruby
- `RS` for RSpec
- `RR` for Rails

and the plugin will open a new tab in your browser (or a
new instance of the browser) to the related docs. See the following section
for changing mappings.

Furthermore, the plugin defines the following commands for searching on the
command-line arbitrary stuff:

- `:RubyDoc`
- `:RspecDoc`
- `:RailsDoc`

Configure it
------------

By default, the plugin uses the
[xdg-open](http://portland.freedesktop.org/xdg-utils-1.0/xdg-open.html)
command to look up the docs but you can easily change the command. For
example, if you are OSX you would like to change it:

    let g:ruby_doc_command='open'

Furthermore you can choose your own mapping in the following way:

    let g:ruby_doc_ruby_mapping='KK'

There are `g:ruby_doc_rspec_mapping` and `g:ruby_doc_rails_mapping` variables
too.

License
-------

Copyright (c) Luca Pette. Distributed under the same terms as Vim itself. See `:help license`.
