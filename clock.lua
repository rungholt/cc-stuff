local monitor = peripheral.find( "monitor", function( id, obj )
    return obj.isColor() -- filter for color monitors
  end )

local w, h = monitor.getSize() -- width, height
local e, time = {}, nil
local fg, bg = 1, 2 -- text and bg colors and color

monitor.setBackgroundColor( bg )
monitor.setTextColor( fg )
monitor.clear()

-- main loop
while e[1] ~= "key" and e[2] ~= keys.q do -- hit 'q' to exit

  os.startTimer( 1 )
  time = textutils.formatTime( os.time(), false )
  local x, y = math.floor( (w - #time) / 2 + .5 ), math.floor( h / 2 + .5 )
  monitor.setCursorPos( 1, y )
  time = x > 0 and string.rep(" ", x-1) .. time .. "  " or time
  monitor.write(time)
  e = { os.pullEvent() }
  if e[1] == "monitor_touch" then -- hit the text or bg to cycle the colors of the display
    if e[3] >= x and e[3] <= x + #time and e[4] == y then
      fg = fg < 32768 and fg * 2 or 1
      monitor.setTextColor( fg )
    else
      bg = bg < 32768 and bg * 2 or 1
      monitor.setBackgroundColor( bg )
      monitor.clear()
    end
  end

end