local input_utils = require("src.lua.input_utils")
local math = require("math")

local Triangle = {}
local TRIANGLE_SIDE_LIMIT = 3
Triangle.__index = Triangle

function Triangle.new(a, b, c)
	local instance = setmetatable({}, Triangle)
	instance.sides = { a, b, c }
	instance.perimeter = instance:getPerimeter()
	instance.area = instance:getArea()
	return instance
end

function Triangle.createTriangle()
	local instance = setmetatable({}, Triangle)
	instance.sides = {}

	for sides = 1, TRIANGLE_SIDE_LIMIT do
		print("Enter Side #" .. sides .. ": ")
		local val = input_utils.getInput()
		table.insert(instance.sides, val)
		if sides == TRIANGLE_SIDE_LIMIT then
			print()
		end
	end

	instance.perimeter = instance:getPerimeter()
	instance.area = instance:getArea()
	return instance
end

function Triangle:getPerimeter()
	local sum = 0
	for side = 1, #self.sides do
		sum = sum + self.sides[side]
	end
	return sum
end

function Triangle:getArea()
	local halved_perimeter = self:getPerimeter() / 2
	return math.sqrt(
		halved_perimeter
			* (halved_perimeter - self.sides[1])
			* (halved_perimeter - self.sides[2])
			* (halved_perimeter - self.sides[3])
	)
end

function Triangle:isTriangle()
	local a, b, c = self.sides[1], self.sides[2], self.sides[3]
	return (a + b > c) and (a + c > b) and (b + c > a)
end

function Triangle:printData()
	print("A = " .. self.sides[1])
	print("B = " .. self.sides[2])
	print("C = " .. self.sides[3])
	print("Perimeter = " .. self.perimeter)
	print("Area= " .. string.format("%.2f", self.area))
end

return Triangle
