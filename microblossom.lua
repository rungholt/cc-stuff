local function InOutChest()
    turtle.turnRight()
    turtle.turnRight()
    turtle.select(1)
    turtle.drop()
    turtle.select(2)
    turtle.drop()
    turtle.select(3)
    turtle.drop()
    turtle.select(4)
    turtle.drop()
    turtle.select(1)
    turtle.suck(1)
    turtle.turnRight()
    turtle.turnRight()
end

local function goDown()
    while turtle.detectDown() == false do
        turtle.down()
    end
    turtle.up()
end

local function harvest()
    for i = 1, 6 do
        turtle.dig()
        turtle.digUp()
        turtle.up()
    end
end
 
local function plant()
    turtle.select(1)
    turtle.place()
end

while turtle.getFuelLevel() <= 200 do
    turtle.select(16)
    turtle.refuel(16)
end

while true do
    local success, data = turtle.inspect()
        if success then
            if data.name == "minecraft:spruce_log" then
                harvest()
                goDown()
                InOutChest()
                plant()
            else
                sleep(30)
                turtle.suckUp()
                turtle.suckDown()
                turtle.suck()
            end
        end
end