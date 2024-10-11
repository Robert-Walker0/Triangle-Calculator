require "math"
require "io"
local Triangle = {}
Triangle.__index = Triangle

function getInput()
	local value = io.read()
	local results = tonumber(value)
	if results == nil then
		print("Expected number but got string")
		return getInput()
	elseif type(results) == "number" then
		return results
	end
end

function Triangle.createTriangle()
	local triangle = setmetatable({}, Triangle)
	print("Enter the 1st #: ")
	triangle.side_one = getInput()
	print("Enter the 2nd #: ")
	triangle.side_two = getInput()
	print("Enter the 3rd #: ")
	triangle.side_three = getInput()
	triangle.perimeter = triangle:getPerimeter()
	triangle.area = triangle:getArea()
		return triangle
end

function Triangle:getPerimeter()
	return self.side_one + self.side_two + self.side_three
end

function Triangle:getArea()
	local halved_perimeter = self:getPerimeter()/2
	return math.sqrt(halved_perimeter * (halved_perimeter - self.side_one) * (halved_perimeter - self.side_two) * (halved_perimeter - self.side_three))
end

function Triangle:isTriangle()
	local isNaN = tostring(self.area) == tostring(0/0)
	if not((type(self.area) == "number" and isNaN) or self.area == 0) then
		return true
	end
	return false
end

function Triangle:printData()
	print("Side #1 =" .. self.side_one)
	print("Side #2 =" .. self.side_two)
	print("Side #3 = " .. self.side_three)
	print("Perimeter = " .. self.perimeter)
	print("Area= " .. string.format("%.2f", self.area))
end

return Triangle
