#!/usr/bin/osascript

tell application "Google Chrome"
    if (active tab index of window 1) = (count tab of window 1)
	set active tab index of window 1 to 1
    else
	set active tab index of window 1 to active tab index of window 1 + 1
    end if
end tell