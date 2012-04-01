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

class Time
  def aprilfool?
    (month == 4) && (day == 1)
  end
end

if Time.now.aprilfool?
  module Kernel
    def p(*args)
      args.each do |arg|
        puts "Not #{arg.inspect} ;)"
      end
    end
  end
else
  $stderr.puts 'WARN: Get back to your normal life. o_0'
end
