local vericode = require "vericode"
vericode.loadKey("mykey.key.pub")
local modem = peripheral.find("modem")
modem.open(1)
while true do
    while true do vericode.receive(true, "turtleInstructions") end
   if message == "exit" then
      break
   end
   shell.run(message)
end
modem.close(1)