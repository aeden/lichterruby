# back and forth
all_off
while(true)
  all_on(RED)
  sleep(2)
  all_on(BLUE)
  sleep(1)
  all_on(RED, direction: DOWN)
  sleep(2)
  all_on(BLUE, direction: DOWN)
  sleep(1)
end

# slow up
all_off
while(true)
  c = Color.new(rand(255), rand(255), rand(255))
  puts "color: #{c.inspect}"
  0.upto(140) do |i|
    on(i, c)
    sleep(0.05)
  end
  sleep(2)
end

# slow back and forth
all_off
while(true)
  0.upto(140) { |i| on(i, RED); sleep(0.05) }
  0.upto(140) { |i| on(i, BLUE); sleep(0.05) }
  140.downto(0) { |i| on(i, RED); sleep(0.05) }
  140.downto(0) { |i| on(i, BLUE); sleep(0.05) }
  sleep(1)
end

# random

all_off
while(true)
  0.upto(140) do |n|
    lights(target: 0, i: n, r: rand(255), g: rand(255), b: rand(255))
  end
  sleep(5)
end

# black, red, yellow
all_off
0.upto(140) do |n|
  case n % 3
    when 0 then
      lights(target: 0, i: n, r: 0, g: 0, b: 0)
      puts "black"
    when 1 then
      lights(target: 0, i: n, r: 255, g: 0, b: 0)
      puts "red"
    when 2 then
      lights(target: 0, i: n, r: 255, g: 255, b: 50)
      puts "yellow"
  end
end

# Viva la France!
all_off
0.upto(140) do |n|
  case n % 3
    when 0 then
      on(n, Color.new(0, 0, 255))
      puts "blue"
    when 1 then
      on(n, Color.new(255, 255, 255))
      puts "white"
    when 2 then
      on(n, Color.new(255, 0, 0))
      puts "red"
  end
end
