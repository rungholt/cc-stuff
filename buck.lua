local modem = peripheral.find("modem")
modem.open(1)
while true do
    local event, peripheral_name, channel, replyChannel, message, distance = os.pullEvent("modem_message")
   if message == "exit" then
      break
   end
   shell.run(message)
end
modem.close(1)