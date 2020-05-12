-- Used to prevent Ctrl+T termination
-- os.pullEvent = os.pullEventRaw

-- Load APIs
os.loadAPI("/lame-os/menu/menuView.lua")

local val = menuView.drawMenu()

if val == 1 then
  shell.run("lame-os/command.lua")
elseif val == 2 then
  shell.run("lame-os/programs.lua")
elseif val == 3 then
  os.shutdown()
else
  shell.run("lame-os/uninstall.lua")
end
