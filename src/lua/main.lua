local calculations = require("src.lua.calculations")

local YES_OPTIONS = { ["y"] = true, ["yes"] = true}
local NO_OPTIONS = { ["n"] = true, ["no"] = true}

repeat
	print("Would you like to test if three values you have are a triangle? (y/n)")
	local input = string.lower(io.read())

	if YES_OPTIONS[input] then
		local triangle = calculations.createTriangle()
		print()
		triangle:printData()

		local is_valid = triangle:isTriangle()
		if is_valid then
			print("This is a triangle!\n")
		else
			print("This is not a triangle!\n")
		end
	elseif NO_OPTIONS[input] then
		print("Goodbye!")
	else
		print("Invalid option!")
	end
until NO_OPTIONS[input]