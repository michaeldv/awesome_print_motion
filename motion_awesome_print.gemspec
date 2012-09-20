# Copyright (c) 2010-2012 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
require File.dirname(__FILE__) + "/lib/awesome_print/version"

Gem::Specification.new do |s|
  s.name        = "motion_awesome_print"
  s.version     = AwesomePrint.version
# s.platform    = Gem::Platform::RUBY
  s.authors     = "Michael Dvorkin"
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.email       = "mike@dvorkin.net"
  s.homepage    = "http://github.com/michaeldv/motion_awesome_print"
  s.summary     = "Pretty print RubyMotion objects with proper indentation and colors"
  s.description = "Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure"

  s.files         = Dir["[A-Z]*[^~]"] + Dir["lib/**/*.rb"] + Dir["spec/*"] + [".gitignore"]
  # s.test_files    = Dir["spec/*"]
  s.executables   = []
  s.require_paths = ["lib"]
  # 
  # s.add_development_dependency "rspec",  ">= 2.6.0"
  # s.add_development_dependency "fakefs", ">= 0.2.1"
end
