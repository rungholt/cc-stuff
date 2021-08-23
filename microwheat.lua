local function InOutChest()
    turtle.select(1)
    turtle.dropUp()
    turtle.select(2)
    turtle.dropUp()
    turtle.suckUp(1)
end

while true do
    local isBlock, data = turtle.inspect()
    if isBlock then
        if data.state and data.state.age == 7 then
            InOutChest()
            turtle.dig()
        end
    else
        turtle.select(1)
        turtle.place()
    end
    turtle.turnRight()
    sleep(30)
end