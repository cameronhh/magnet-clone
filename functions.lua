-- Left half of the screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "[", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Right half of the screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "]", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Full screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:creen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Thirds (left)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "D", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Thirds (middle)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Thirds (right)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "G", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 2 * (max.w / 3)
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h
  win:setFrame(f, 0)
end)


-- Fourths (left)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Q", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Fourths (left-middle)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 4)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Fourths (right-middle)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "E", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 2 * (max.w / 4)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Fourths (right)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 3 * (max.w / 4)
  f.y = max.y
  f.w = max.w / 4
  f.h = max.h
  win:setFrame(f, 0)
end)

-- Splitters (horizontal-left)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "-", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x
  f.y = f.y
  f.w = f.w / 2
  f.h = f.h
  win:setFrame(f, 0)
end)

-- Splitters (horizontal-right)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "=", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x + (f.w / 2)
  f.y = f.y
  f.w = f.w / 2
  f.h = f.h
  win:setFrame(f, 0)
end)

-- Centre
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "'", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()

  win:centerOnScreen(screen, true, 0)
end)

-- Splitters (vertical-top)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "P", function()
  local win = hs.window.focusedWindow()
  local f = win:frame() 
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x
  f.y = f.y
  f.w = f.w
  f.h = f.h / 2
  win:setFrame(f, 0)
end)

-- Splitters (vertical-bottom)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, ";", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = f.x
  f.y = f.y + (f.h / 2)
  f.w = f.w
  f.h = f.h / 2
  win:setFrame(f, 0)
end)

-- North
hs.hotkey.bind({"ctrl"}, "K", function()
  local win = hs.window.focusedWindow()
  win:focusWindowNorth()
end)

-- South
hs.hotkey.bind({"ctrl"}, "J", function()
  local win = hs.window.focusedWindow()
  win:focusWindowSouth()
end)

-- East
hs.hotkey.bind({"ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  win:focusWindowWest()
end)

-- West
hs.hotkey.bind({"ctrl"}, "L", function()
  local win = hs.window.focusedWindow()
  win:focusWindowEast()
end)

