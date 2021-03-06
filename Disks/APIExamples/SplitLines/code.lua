--[[
  Pixel Vision 8 - SplitLines Example
  Copyright (C) 2017, Pixel Vision 8 (http://pixelvision8.com)
  Created by Jesse Freeman (@jessefreeman)

  This project was designed to display some basic instructions when you create
  a new game.  Simply delete the following code and implement your own Init(),
  Update() and Draw() logic.

  Learn more about making Pixel Vision 8 games at
  https://www.pixelvision8.com/getting-started
]]--

-- Message to display on the screen
local message = "PIXEL VISION 8\n\n\nVisit 'pixelvision8.com' to learn more about creating games from scratch."

function Init()

  -- To convert the message into lines of text we need to wrap it then split it
  local wrap = WordWrap(message, (Display().x / 8) - 2)
  local lines = SplitLines(wrap)

  -- Loop through each line of text and draw it to the display
  for i = 1, #lines do
    DrawText(lines[i], 1, i, DrawMode.Tile, "large", 15)
  end

end

function Draw()
  -- Redraw the display
  RedrawDisplay()
end
