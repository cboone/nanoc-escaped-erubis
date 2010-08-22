# [Escaped Erubis][e-er] filter for [Nanoc][].

A minor, but useful, modification of [Nanoc's default Erubis filter][n-er], by [Christopher Boone][hpm].

The Escaped Erubis filter works exactly like the regular Erubis filter, except that it uses `Erubis::EscapedEruby` in place of `Erubis::Eruby`. The `EscapedEruby` class switches the behavior of `<%= %>` and `<%== %>`, meaning that `<%= %>` escapes its contents and `<%== %>` does not. (The opposite of standard Erubis and Erb behavior.)

The Escaped Erubis filter also includes the [ErboutEnhancer][erbout], which makes Eruby use `_erbout` as its buffer, in addition to its usual `_buf`. Thus filters and other code, such as those included with Nanoc, that assume you're using Erb, and that Erb is using `_erbout`, will work correctly when filtered with Escaped Erubis.


## Installation

Just drop [the `filters` folder][filters] into your project's `/lib` directory.

Or, if `/lib/filters` already exists, then add [the `escaped_erubis.rb` file][ee-f] to it.


## Usage

To filter an item with Escaped Erubis, use:

    filter :escaped_erubis

To filter a layout, use something like this:

    layout '*', :escaped_erubis


## More information

### Erubis

* The Erubis project site: [http://www.kuwata-lab.com/erubis/][Erubis]
* The Erubis user's guide: [http://www.kuwata-lab.com/erubis/users-guide.html][eug]
* `Erubis::EscapedEruby`: [http://www.kuwata-lab.com/erubis/users-guide.02.html#tut-escape][e-er]


### Nanoc filters

* The Nanoc user manual: [http://nanoc.stoneship.org/docs/][n-docs]
* The filters section, in the Nanoc user manual: [http://nanoc.stoneship.org/docs/4-basic-concepts/#filters][n-docs-f]


### Nanoc

* The Nanoc project site: [http://nanoc.stoneship.org/][Nanoc]
* Nanoc's Mercurial project: [http://projects.stoneship.org/hg/nanoc/][n-hg]
* Nanoc's Github mirror: [http://github.com/ddfreyne/nanoc][n-gh]
* The Nanoc Trac (wiki and issue tracker): [http://projects.stoneship.org/trac/nanoc][n-t]
* Nanoc's API documentation: [http://nanoc.stoneship.org/docs/api/3.1/][n-api]



[hpm]: http://hypsometry.com
[e-er]: http://www.kuwata-lab.com/erubis/users-guide.02.html#tut-escape
[Nanoc]: http://nanoc.stoneship.org/
[n-er]: http://nanoc.stoneship.org/docs/api/3.1/Nanoc3/Filters/Erubis.html
[filters]: http://github.com/cboone/nanoc-escaped-erubis/tree/master/filters/
[ee-f]: http://github.com/cboone/nanoc-escaped-erubis/tree/master/filters/escaped_erubis.rb
[n-gh]: http://github.com/ddfreyne/nanoc
[n-docs-f]: http://nanoc.stoneship.org/docs/4-basic-concepts/#filters
[n-docs]: http://nanoc.stoneship.org/docs/
[n-hg]: http://projects.stoneship.org/hg/nanoc/
[n-t]: http://projects.stoneship.org/trac/nanoc
[n-api]: http://nanoc.stoneship.org/docs/api/3.1/
[Erubis]: http://www.kuwata-lab.com/erubis/
[eug]: http://www.kuwata-lab.com/erubis/users-guide.html
[erbout]: http://www.kuwata-lab.com/erubis/users-guide.03.html#erbout-enhancer