#!/usr/bin/osascript

on run argv
    tell application "TeXShop"
	--activate
	repeat with n from 1 to count documents
	    refreshpdfbackground document n
	end repeat
    end tell
end run