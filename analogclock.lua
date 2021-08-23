local w,h = term.getSize()
local ttfl = (os.time()/24) * 2 * math.pi
local day = ttfl/8
function printFrame()
  for i=0,math.pi*2,math.pi/128 do
        local xco = math.cos(i) * w/2 + w/2 + 1
        local yco = math.sin(i) * h/2 + h/2 + 1

        term.setCursorPos(xco,yco)
        term.write("*")
  end
end
function printHands()
  local ttf = (os.time()/24) * math.pi * 2
  local inc = ttf - ttfl
  if ttf < ttfl then inc = 1 + ttf - ttfl end

  day = day + inc/8
  day = day % (math.pi * 2)
  
  ttfl = ttf
                                
  for i=0,0.9,0.05 do
        local xco = math.cos(ttf-math.pi/2) * w/2 * i + w/2 + 1
        local yco = math.sin(ttf-math.pi/2) * h/2 * i + h/2 + 1

        term.setCursorPos(xco,yco)
        term.write("&")
  end

  for i=0,0.5,0.05 do
        local xco = math.cos(day-math.pi/2) * w/2 * i + w/2 + 1
        local yco = math.sin(day-math.pi/2) * h/2 * i + h/2 + 1
  
        term.setCursorPos(xco,yco)
        term.write("#")
  end
end
while true do
  term.clear()
  printFrame()
  printHands()
  
  sleep(1)
end