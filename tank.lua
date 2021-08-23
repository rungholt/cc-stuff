local function checkTank()
    if redstone.getAnalogInput("left") == 9 then
        term.blit("9", "4", "f")
    end
end

while true do
    checkTank()
    os.pullEvent("redstone")
end