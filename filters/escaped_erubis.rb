# encoding: utf-8

module Nanoc3::Filters
  class EscapedErubis < Nanoc3::Filter
    identifier :escaped_erubis

    # Runs the content through [Erubis](http://www.kuwata-lab.com/erubis/),
    # using [the EscapedEruby class](http://www.kuwata-lab.com/erubis/users-guide.02.html#tut-escape).
    # This method takes no options.
    #
    # @param [String] content The content to filter
    #
    # @return [String] The filtered content
    def run(content, params={})
      require 'erubis'

      # Create context
      context = ::Nanoc3::Context.new(assigns)

      # Get result
      ::Erubis::EscapedEruby.new(content, :filename => filename).result(context.get_binding { assigns[:content] })
    end

  end
end
