local termWidth,
  termHeight = term.getSize()

-- Helper function for printing centered text
function printCentered(y, string)
  local x = math.floor((termWidth - string.len(string)) / 2)
  term.setCursorPos(x, y)
  term.clearLine()
  term.write(string)
end