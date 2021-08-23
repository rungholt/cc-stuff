    local function checkFuel()
        while turtle.getFuelLevel() <= 200 do
            turtle.select(16)
            turtle.refuel(16)
            turtle.select(1)
        end
    end

    local function tDigDown()
        turtle.digDown()
        turtle.down()
        turtle.digDown()
    end

    local function tPlace()
        turtle.select(1)
        turtle.placeDown()
        turtle.up()
        turtle.placeDown()
    end

    while turtle.detect() == false do
        local success, data = turtle.inspectDown()
            if success then
                if data.name ~= "minecraft:grass_block" then
                    checkFuel()
                    tDigDown()
                    tPlace()
                end
            end
                turtle.forward()
    end