local calculations = require("calculations")

repeat
	print("Would you like to test if the three values you have are a triangle? (y/n): ")
	local answer = string.lower(io.read())
	if answer == "y" or answer == "yes" then
		local triangle = calculations.createTriangle()
		triangle:printData()
		local answer = triangle:isTriangle()
		if answer then
			print("This is a triangle!")
		else
			print("This is not a triangle!")
		end
	elseif answer == "n" or answer == "no" then
		print("Goodbye!")
	else
		print("Invalid option!")
	end
until(answer == "n" or answer == "no")