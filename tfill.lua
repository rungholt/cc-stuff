local function detectBehind()
        turtle.turnRight()
        turtle.turnRight()
    while turtle.detect() do
        turtle.up()
        turtle.placeDown()
    end
        turtle.turnRight()
        turtle.turnRight()
end  

local function goDown()
    while turtle.detectDown() == false do
        turtle.down()
    end
end

local times = 0
print("x how long?: ")
times = read()
    for i = 1, times do
        turtle.forward()
        goDown()
        detectBehind()
end