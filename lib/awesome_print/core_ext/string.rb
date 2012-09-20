# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
class String
  #
  # ANSI color codes:
  #   \e => escape
  #   30 => color base
  #    1 => bright
  #    0 => normal
  #
  # For HTML coloring we use <kbd> tag instead of <span> to require monospace
  # font. Note that beloved <tt> has been removed from HTML5.
  #
  def gray(*html)
    html[0] ? %Q|<kbd style="color:gray">#{self}</kbd>| : "\e[1;30m#{self}\e[0m"
  end
  def grayish(*html)
    html[0] ? %Q|<kbd style="color:black">#{self}</kbd>| : "\e[0;30m#{self}\e[0m"
  end

  def red(*html)
    html[0] ? %Q|<kbd style="color:red">#{self}</kbd>| : "\e[1;31m#{self}\e[0m"
  end
  def redish(*html)
    html[0] ? %Q|<kbd style="color:darkred">#{self}</kbd>| : "\e[0;31m#{self}\e[0m"
  end

  def green(*html)
    html[0] ? %Q|<kbd style="color:green">#{self}</kbd>| : "\e[1;32m#{self}\e[0m"
  end
  def greenish(*html)
    html[0] ? %Q|<kbd style="color:darkgreen">#{self}</kbd>| : "\e[0;32m#{self}\e[0m"
  end

  def yellow(*html)
    html[0] ? %Q|<kbd style="color:yellow">#{self}</kbd>| : "\e[1;33m#{self}\e[0m"
  end
  def yellowish(*html)
    html[0] ? %Q|<kbd style="color:brown">#{self}</kbd>| : "\e[0;33m#{self}\e[0m"
  end

  def blue(*html)
    html[0] ? %Q|<kbd style="color:blue">#{self}</kbd>| : "\e[1;34m#{self}\e[0m"
  end
  def blueish(*html)
    html[0] ? %Q|<kbd style="color:navy">#{self}</kbd>| : "\e[0;34m#{self}\e[0m"
  end

  def purple(*html)
    html[0] ? %Q|<kbd style="color:purple">#{self}</kbd>| : "\e[1;35m#{self}\e[0m"
  end
  def purpleish(*html)
    html[0] ? %Q|<kbd style="color:darkmagenta">#{self}</kbd>| : "\e[0;35m#{self}\e[0m"
  end

  def cyan(*html)
    html[0] ? %Q|<kbd style="color:cyan">#{self}</kbd>| : "\e[1;36m#{self}\e[0m"
  end
  def cyanish(*html)
    html[0] ? %Q|<kbd style="color:darkcyan">#{self}</kbd>| : "\e[0;36m#{self}\e[0m"
  end

  def white(*html)
    html[0] ? %Q|<kbd style="color:white">#{self}</kbd>| : "\e[1;37m#{self}\e[0m"
  end
  def whiteish(*html)
    html[0] ? %Q|<kbd style="color:slategray">#{self}</kbd>| : "\e[0;37m#{self}\e[0m"
  end

  # %w(gray red green yellow blue purple cyan white).zip(
  # %w(black darkred darkgreen brown navy darkmagenta darkcyan slategray)).each_with_index do |(color, shade), i|
  #   define_method color do |*html|
  #     html[0] ? %Q|<kbd style="color:#{color}">#{self}</kbd>| : "\e[1;#{30+i}m#{self}\e[0m"
  #   end
  # 
  #   define_method "#{color}ish" do |*html|
  #     html[0] ? %Q|<kbd style="color:#{shade}">#{self}</kbd>| : "\e[0;#{30+i}m#{self}\e[0m"
  #   end
  # end

  alias :black :grayish
  alias :pale  :whiteish

end
