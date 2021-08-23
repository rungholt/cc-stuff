while true do
  local success, data = turtle.inspectDown()
    if success then
      print("Block name: ", data.name)
      print("Block State: ", data.state)
      print("Block Age: ", data.state.age)    
  end
  sleep(60)
end