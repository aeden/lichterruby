require 'socket'

PORT = 33333
HOST = ENV['SERVER'] || 'lights.socoded.com'

UP = :up
DOWN = :down

class Color
  attr_accessor :red, :green, :blue

  def initialize(r, g, b)
    @red = r
    @green = g
    @blue = b
  end
end

def all_off(direction: UP)
  0.upto(140) do |n|
    off(n)
  end
end

def all_on(color, direction: UP)
  case direction
  when UP then
    0.upto(140) do |n|
      on(n, color)
    end
  when DOWN then
    140.downto(0) do |n|
      on(n, color)
    end
  end
end

def off(i)
  lights(target: 0, i: i, r: 0, g: 0, b: 0)
end

def on(i, color)
  lights(target: 0, i: i, r: color.red, g: color.green, b: color.blue)
end

def lights(target: 0, i: 0, r: 0, g: 0, b: 0)
  s = UDPSocket.new
  s.send([i, r, g, b, target].join(","), 0, HOST, PORT)
  s.close
end
