while true do
    if redstone.getAnalogInput("right") <= 13 then
        redstone.setAnalogOutput("left", 15)
        os.pullEvent("redstone")
    else
        redstone.setAnalogOutput("left", 0)
        os.pullEvent("redstone")
    end
end