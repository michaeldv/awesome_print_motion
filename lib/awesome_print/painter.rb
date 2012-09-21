# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
module AwesomePrint
  class Painter
    #
    # ANSI color codes:
    #   \e => escape
    #   30 => color base
    #    1 => bright
    #    0 => normal
    #
    ANSI = { gray: 30, red: 31, green: 32, yellow: 33, blue: 34, purple: 35, cyan: 36, white: 37 }
    METHOD_NAMES = ANSI.keys + [ :black, :pale ] + ANSI.keys.map { |key| :"#{key}ish" }

    def self.method_missing(method, *args)
      return super if !respond_to?(method)

      method = :grayish if method == :black
      method = :whiteish if method == :pale

      if method.to_s =~ /(.+?)ish/
        "\e[0;#{ANSI[$1.to_sym]}"
      else
        "\e[1;#{ANSI[method]}"
      end << "m#{args[0]}\e[0m"
    end

    def self.respond_to?(method)
      METHOD_NAMES.include?(method)
    end
  end
  #
  # The following causes exception with RubyMotion 1.2.4, see
  # https://gist.github.com/3759094 for details.
  #
  # module Painter
  #   extend self
  #   #
  #   # ANSI color codes:
  #   #   \e => escape
  #   #   30 => color base
  #   #    1 => bright
  #   #    0 => normal
  #   #
  #   %w(gray red green yellow blue purple cyan white).each_with_index do |color, i|
  #     define_method color do |str|
  #       "\e[1;#{30+i}m#{str}\e[0m"
  #     end
  #
  #     define_method "#{color}ish" do |str|
  #       "\e[0;#{30+i}m#{str}\e[0m"
  #     end
  #   end
  #
  #   alias :black :grayish
  #   alias :pale  :whiteish
  # end
end
