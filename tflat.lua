local function goDown()
    while turtle.detectDown() == false do
        turtle.down()
    end
end

local function digStuff()
    while turtle.detect() do
        turtle.dig()
        turtle.digUp()
        turtle.up()
    end
        goDown()
        turtle.forward()
end

local times = 0
print("Hello! How many times to run?: ")
times = read()
  for i = 1, times do
    digStuff()
end