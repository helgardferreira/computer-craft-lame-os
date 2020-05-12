function menuNavigation(upFunc, downFunc, enterFunc)
  -- Grab user input
  -- Yields the program until an input is received
  local event,
    key = os.pullEvent()

  if event == "key" then
    if key == 17 or key == 200 then
      -- Keys for W and up-arrow
      return upFunc()
    elseif key == 31 or key == 208 then
      -- Keys for S and down-arrow
      return downFunc()
    elseif key == 28 then
      -- Key for enter
      return enterFunc()
    end
  end
end
