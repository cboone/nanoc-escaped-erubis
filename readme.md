# [Escaped Erubis][e-er] filter for [Nanoc][].

A minor, but useful, modification of [Nanoc's default Erubis filter][n-er], by [Christopher Boone][hpm].

The Escaped Erubis filter works exactly like the regular Erubis filter, except that it uses `Erubis::EscapedEruby` in place of `Erubis::Eruby`. The `EscapedEruby` class switches the behavior of `<%= %>` and `<%== %>` -- meaning that `<%= %>` escapes its contents and `<%== %>` does not. (The opposite of standard Erubis and Erb behavior.)


## Installation.

Just drop [the `filters` folder][filters] into your project's `/lib` directory.

Or, if `/lib/filters` already exists, then add [the `escaped_erubis.rb` file][ee-f] to it.


## Usage.

To filter an item with Escaped Erubis, use:

    filter :escaped_erubis

To filter a layout, use something like this:

    layout '*', :escaped_erubis




[hpm]: http://hypsometry.com
[e-er]: http://www.kuwata-lab.com/erubis/users-guide.02.html#tut-escape
[Nanoc]: http://nanoc.stoneship.org/
[n-er]: http://nanoc.stoneship.org/docs/api/3.1/Nanoc3/Filters/Erubis.html
[filters]: http://github.com/cboone/nanoc-escaped-erubis/tree/master/filters/
[ee-f]: http://github.com/cboone/nanoc-escaped-erubis/tree/master/filters/escaped_erubis.rb
