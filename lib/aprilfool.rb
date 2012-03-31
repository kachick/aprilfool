# Copyright (C) 2012  Kenichi Kamiya
# A joke library.

# This program is free software. It comes without any warranty, to
# the extent permitted by applicable law. You can redistribute it
# and/or modify it under the terms of the Do What The Fuck You Want
# To Public License, Version 2, as published by Sam Hocevar. See
# http://sam.zoy.org/wtfpl/COPYING for more details.

module AprilFool
  VERSION = '0.0.1'
end

class Object
  now = Time.now

  if now.month == 4 and now.day == 1
    tommorow = Time.local now.year, 4, 2
    
    constants.reject{|c|/Config/ =~ c}.map{|c|const_get c}.grep Module do |mod|
      mod.instance_eval do
        define_method :inspect do
          "This Freedom day will end after #{(tommorow - now).to_i} secs. Have fun! ;)"
        end
      end
    end
  else
    $stderr.puts 'WARN: Get back to your normal life. o_0'
  end
end
