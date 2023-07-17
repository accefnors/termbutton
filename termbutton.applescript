tell application "Finder" to set selected to selection

on openTerm(input)
	try
		set term to (do shell script "defaults read accefnors.termbutton terminal")
	on error noTerm
		do shell script "defaults write accefnors.termbutton terminal Terminal"
		set term to (do shell script "defaults read accefnors.termbutton terminal")
	end try
	set currentDir to {}
	if input is {} then
		tell application "Finder"
			if exists Finder window 1 then
				set currentDir to (quoted form of (POSIX path of (target of Finder window 1 as alias))) as list
			else
				set currentDir to (quoted form of (POSIX path of (home as alias))) as list
			end if
		end tell
	else
		repeat with i in input
			set end of currentDir to quoted form of (POSIX path of (i as alias))
		end repeat
	end if
	repeat with arg in currentDir
		do shell script "if [ -d " & arg & " ]; then open -a " & term & " " & arg & "; else open -a " & term & " \"$(dirname " & arg & ")\"; fi"
	end repeat
end openTerm

openTerm(selected)
