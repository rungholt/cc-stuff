local vericode = require "vericode"
if not fs.exists("mykey.key") then
    vericode.generateKeypair("mykey.key")
    print("Please copy mykey.key.pub to the client computer.")
    return
end
local key = vericode.loadKey("mykey.key")
local modem = peripheral.find("modem")
modem.open(3)
while true do
   input = read()
   vericode.send(1, input, key, "turtleInstructions")
   if input == "exitbuck" then
      break
   end
end
modem.close(3)
