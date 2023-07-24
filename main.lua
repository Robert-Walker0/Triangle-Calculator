local calculations = require("calculations")

repeat 
	-- Main Program. This keeps on running until the program is given the
	-- users says no or n.
	print("Would you like to test if the three values you have are a triangle? (y/n): ")
	local answer = string.lower(io.read())
	if answer == "y" or answer == "yes" then
		local triangle = calculations.new()
		if triangle ~= nil then
			triangle:run()
		end
	elseif answer == "n" or answer == "no" then
		print("Goodbye!")
	else
		print("Invalid option!")
	end
until(answer == "n" or answer == "no")


