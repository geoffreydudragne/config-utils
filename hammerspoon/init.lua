hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", function()
  -- toggle the focused window to full screen (workspace)
  local win = hs.window.focusedWindow()
  win:setFullScreen(true)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", function()
  -- toggle the focused window to full screen (workspace)
  local win = hs.window.focusedWindow()
  win:setFullScreen(false)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", function()
  -- move the focused window one display to the right
  local win = hs.window.focusedWindow()
  local isFull = win:isFullScreen()
  win:setFullScreen(false)
  win:moveOneScreenEast(0)
  win:focus()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", function()
  -- move the focused window one display to the left
  local win = hs.window.focusedWindow()
  local isFull = win:isFullScreen()
  win:setFullScreen(false)
  win:moveOneScreenWest(0)
  win:focus()
end)

