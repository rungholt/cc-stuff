if not fs.exists('goto') then
	shell.run('pastebin get HS3Vv8z8 goto')
end

while turtle.getFuelLevel() <= 200 do
    turtle.select(16)
    turtle.refuel(1)
end

local function findSlot()
    for i = 1, 15 do
        if turtle.getItemCount(i) == 0 then
            turtle.select(i)
            return
        end
    end
end

shell.run("goto 4 81 180") -- Melon Chest GPS
    findSlot()
    turtle.suckDown()

shell.run("goto 10 81 181") -- Carrot Chest GPS
    findSlot()
    turtle.suckDown()

shell.run("goto 10 81 184") -- Potato Chest GPS
    findSlot()
    turtle.suckDown()

shell.run("goto 13 81 184") -- Wheat Chest GPS
    findSlot()
    turtle.suckDown()

shell.run("goto 4 80 186") -- Home Chest GPS
for i = 1,15 do
    turtle.select(i)
    turtle.dropDown()
end