function FooHandler_OnEvent(self, event, ...)
	message("Hello " .. UnitName("player") .. " " .. UnitLevel("player"))
	print("Hello " .. UnitName("player") .. " " .. UnitLevel("player"))
end