# back and forth
all_off
while(true)
  all_on(Color.new(255, 0, 0))
  sleep(2)
  all_on(Color.new(0, 255, 0))
  sleep(1)
  all_on(Color.new(255, 0, 0), direction: DOWN)
  sleep(2)
  all_on(Color.new(0, 255, 0), direction: DOWN)
  sleep(1)
end

# random

all_off
while(true)
  1.upto(140) do |n|
    lights(target: 0, i: n, r: rand(255), g: rand(255), b: rand(255))
  end
  sleep(5)
end

# black, red, yellow

all_off
1.upto(140) do |n|
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
