-- Load APIs
os.loadAPI("/lame-os/menu/draw.lua")
os.loadAPI("/lame-os/helpers/userInput.lua")

-- Local variables
local menuItem = 1 -- Default menu item value

local rows = {
  "",
  "Start Menu",
  "",
  "Command Line",
  "Programs",
  "Shutdown",
  "Uninstall"
}

local function clearStatus()
  term.setCursorPos(1, 1)
  term.clear()
end

function drawMenu()
  draw.frontend(rows, menuItem)

  while true do
    result =
      userInput.menuNavigation(
      -- Up condition
      function()
        -- first case
        if menuItem > 1 then
          menuItem = menuItem - 1
        end
        return true
      end,
      -- Down condition
      function()
        -- second case
        if menuItem < 4 then
          menuItem = menuItem + 1
        end
        return true
      end,
      -- Enter condition
      function()
        -- Execute appropriate program
        clearStatus()

        return false
      end
    )
    if result == false then
      break
    end

    draw.frontend(rows, menuItem)
  end

  return menuItem
end
