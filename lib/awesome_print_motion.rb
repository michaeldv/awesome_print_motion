# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob("#{File.dirname(__FILE__)}/awesome_print/core_ext/*.rb").each do |file|
    app.files.unshift(file)
  end

  Dir.glob("#{File.dirname(__FILE__)}/awesome_print/*.rb").each do |file|
    app.files.unshift(file)
  end
end
