local function goForward()
    for i = 1, 6 do
        turtle.forward(i)
    end
end

local function goBack()
    for i = 1, 6 do
        turtle.back(i)
    end
end

while true do
    local isBlock, data = turtle.inspectDown()
    if isBlock then
        if data.state and data.state.age == 7 then
            turtle.digDown()
            turtle.select(1)
            turtle.placeDown()
        end
    else
        goForward()
    end
        goBack()
        sleep(30)
end