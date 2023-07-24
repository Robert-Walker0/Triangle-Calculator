require "math"
require "io"
local Triangle = {}
Triangle.__index = Triangle

-- Core file for calculating triangles. 
function HandleInputTriangle(prompt)
	-- This function handles the user input after it is given a prompt, it
	-- takes one parameter; prompt as a string and returns the results of
	-- what the user entered if vaild.
	print(prompt)
	local value = io.read()
	local results = tonumber(value)
	if results ~= nil and results > 0 then
		return results
	end
	return HandleInputTriangle(prompt)
end

function Triangle.new()
	-- Creates a triangle using the "HandleInputTriangle" function and
	-- using a metatable.
	local tri = setmetatable({}, Triangle)
	tri.side_one = HandleInputTriangle("Enter the first number: ")
	if tri.side_one > 0 then
		tri.side_two = HandleInputTriangle("Enter the second number: ")
		tri.side_three = HandleInputTriangle("Enter the second number: ")
		return tri
	end
	return nil
end

function Triangle:get_perimeter()
	-- Returns the perimeter of the triangle.
	return self.side_one + self.side_two + self.side_three
end

function Triangle:get_area()
	-- Returns the area of the triangle.
	local halved_size = self:get_perimeter()/2
	return math.sqrt(halved_size * (halved_size - self.side_one) * (halved_size - self.side_two) * (halved_size - self.side_three))
end

function Triangle:run()
	-- Determines if a triangle is actually a triangle or not. 
	local area = self:get_area()
	local perimeter = self:get_perimeter()
	local invalid_area = tostring(area) == tostring(0/0)
	if type(area) == "number" and invalid_area or area == 0 then
		print(self.side_one .. ", " .. self.side_two .. ", " .. self.side_three .. " is not a triangle")
	else
		print(self.side_one .. "," .. self.side_two .. "," .. self.side_three .. ": perimeter=" .. perimeter .. string.format(" area=%.2f", area))
	end
end

return Triangle

