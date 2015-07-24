#!/usr/bin/env ruby

require_relative 'client'

all_off
while(true)
  0.upto(140) { |i| on(i, RED); sleep(0.05) }
  0.upto(140) { |i| on(i, BLUE); sleep(0.05) }
  0.upto(140) { |i| on(i, GREEN); sleep(0.05) }
end
