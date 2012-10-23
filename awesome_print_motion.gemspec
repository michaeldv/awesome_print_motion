# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
require File.dirname(__FILE__) + "/lib/awesome_print_motion/version"

Gem::Specification.new do |s|
  s.name        = "awesome_print_motion"
  s.version     = AwesomePrint.version
  s.authors     = "Michael Dvorkin"
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.email       = "mike@dvorkin.net"
  s.homepage    = "http://github.com/michaeldv/awesome_print_motion"
  s.summary     = "Pretty print RubyMotion objects with proper indentation and colors"
  s.description = "Great RubyMotion dubugging companion: pretty print RubyMotion objects to visualize their structure"

  s.files         = Dir["[A-Z]*[^~|lock]"] + Dir["lib/**/*.rb"] + Dir["spec/*"] + [".gitignore"]
  s.test_files    = Dir["spec/*"]
  s.executables   = []
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
