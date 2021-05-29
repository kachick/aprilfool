# Copyright (C) 2012  Kenichi Kamiya
# apilfool - A joke library.

# This program is free software. It comes without any warranty.
# See https://unlicense.org/

require_relative 'time/aprilfool'

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