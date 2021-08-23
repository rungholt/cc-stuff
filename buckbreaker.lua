local modem = peripheral.find("modem")
modem.open(3)
while true do
   input = read()
   modem.transmit(1,3, input)
   if input == "exitbuck" then
      break
   end
end
modem.close(3)