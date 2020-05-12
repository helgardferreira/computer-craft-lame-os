-- Load APIs
os.loadAPI("/lame-os/helpers/printStyle.lua")

-- Local variables
local termWidth,
  termHeight = term.getSize()

-- Creates User Interface
function frontend(rows, selectedItem)
  term.clear()
  term.setCursorPos(1, 1)
  term.write("LAME OS")

  for index, rowItem in pairs(rows) do
    if selectedItem == index - 3 then
      printStyle.printCentered(
        math.floor(termHeight / 2) + (index - 4),
        string.format("%s%s%s", "[ ", rowItem, " ]")
      )
    else
      printStyle.printCentered(
        math.floor(termHeight / 2) + (index - 4),
        rowItem
      )
    end
  end

  term.setCursorPos(termWidth - 11, 1)
  term.write(rows[selectedItem + 3])
end
