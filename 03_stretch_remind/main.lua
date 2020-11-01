local function stretchTimer()
	print("You have been playing for an hour. Take a quick stretch break!")
	C_Timer.After(3600, stretchTimer)
	PlaySound(416)
end

stretchTimer()