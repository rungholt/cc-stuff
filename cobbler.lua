while true do
    if  turtle.detectDown() then
        turtle.digDown()
    else
        turtle.select(1)
        turtle.dropUp()   
        sleep(10)
    end
end