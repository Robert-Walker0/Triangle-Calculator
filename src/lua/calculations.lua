require "math"
require "input_utils"

local Triangle = {}
Triangle.__index = Triangle

function Triangle.createTriangle()
	local instance = setmetatable({}, Triangle)
	instance.sides = {}

	for sides=1, 3 do
		print("Enter Side #" .. sides .. ": ")
		local val = input_utils.getInput()
		table.insert(instance.sides, val)
	end

	instance.perimeter = instance:getPerimeter()
	instance.area = instance:getArea()
	return instance
end

function Triangle:getPerimeter()
	local sum = 0
	for side=1, #self.sides do 
		sum = sum + self.sides[side]
	end
	return sum
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
	print("A =" .. self.sides[1] .. " B = " .. self.sides[2] .. " C =" .. self.sides[3])
	print("Perimeter = " .. self.perimeter)
	print("Area= " .. string.format("%.2f", self.area))
end

return Triangle
