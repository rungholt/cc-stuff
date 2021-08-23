while true do
    if redstone.getAnalogInput("back") > 0 then
        shell.run("dj play")
    else
        os.pullEvent("redstone")
    end
end