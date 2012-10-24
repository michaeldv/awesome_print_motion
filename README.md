## Awesome Print for RubyMotion ##
Awesome Print for RubyMotion is a RubyMotion gem that pretty prints RubyMotion objects in full color
exposing their internal structure with proper indentation.

Current version is based on Awesome Print v1.1.0. Please see http://github.com/michaeldv/awesome_print
for more information.

### Installation ###
    # Installing as Ruby gem
    $ gem install awesome_print_motion

    # Cloning the repository
    $ git clone git://github.com/michaeldv/awesome_print_motion.git

### Usage ###
Generate RubyMotion project, then require "awesome_print_motion" in projects's Rakefile:

    # -*- coding: utf-8 -*-
    $:.unshift("/Library/RubyMotion/lib")
    require "motion/project"
    require "awesome_print_motion"

    Motion::Project::App.setup do |app|
      app.name = "your_app_name"
    end

Within AppDelegate you can use <code>ap object, options</code> method. For example:

    class AppDelegate
      def application(application, didFinishLaunchingWithOptions:launchOptions)
        ap self, :raw => true
        true
      end
    end

AwesomePrint also becomes available in RubyMotion console:

       Build ./build/iPhoneSimulator-6.0-Development
    Simulate ./build/iPhoneSimulator-6.0-Development/your_app_name.app
    (main)> ap [ false, 42, %w(forty two), { :now => Time.now, :class => Time.now.class, :distance => 42e42 } ]
    [
        [0] false,
        [1] 42,
        [2] [
            [0] "forty",
            [1] "two"
        ],
        [3] {
                 :now => 2012-10-23 17:09:19 -0700,
               :class => Time < NSDate,
            :distance => Infinity
        }
    ]
    => nil
    (main)> ap [1,2,3]

Supported options and color codes are documented at http://github.com/michaeldv/awesome_print. 

### Differences with Ruby awesome_print v1.1.0 ###
* No support for :html formatting option.
* No integration with Logger.
* No integration IRB or Pry.
* AwesomePrint extensions are supported but none are bundled.
* AwesomePrint specs haven't been ported yet.
* Not compatible with Ruby 1.8.6 and 1.8.7 ;-)


### Note on Patches/Pull Requests ###
* Fork the project on Github.
* Make your feature addition or bug fix.
* Commit, do not mess with Rakefile, version, or history.
* Send me commit URL (*do not* send pull requests).

### License ###
Copyright (c) 2010-2012 Michael Dvorkin

http://www.dvorkin.net

%w(mike dvorkin.net) * "@" || %w(mike fatfreecrm.com) * "@"

Released under the MIT license. See LICENSE file for details.
