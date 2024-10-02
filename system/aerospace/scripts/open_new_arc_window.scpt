on is_running(appName)
  tell application "System Events" to (name of processes) contains appName
end is_running

if not is_running("Arc") then
  tell application "Arc" to activate
else
  tell application "System Events" to tell process "Arc"
    click menu item "Blank window" of menu "File" of menu bar 1
  end tell

  -- Focus the new window
  tell application "Arc"
    activate
  end tell
end if
