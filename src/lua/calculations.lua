local input_utils = require("src.lua.input_utils")

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
	local sides = {}
	for sideNum = 1, TRIANGLE_SIDE_LIMIT do
		print("Enter Side #" .. sideNum .. ": ")
		local val = input_utils.getInput()
		table.insert(sides, val)
	end
	return Triangle.new(unpack(sides))
end

function Triangle:getPerimeter()
	local a, b, c = unpack(self.sides)
	return a + b + c
end

function Triangle:getArea()
	if not self:isTriangle() then return 0 end
	local a, b, c = unpack(self.sides)
	local semiperimeter = self.perimeter  / 2
	return math.sqrt(
		semiperimeter
			* (semiperimeter - a)
			* (semiperimeter - b)
			* (semiperimeter - c)
	)
end

function Triangle:isTriangle()
	local a, b, c = unpack(self.sides)	
	return (a + b > c) and (a + c > b) and (b + c > a)
end

function Triangle:printData()
	local a, b, c = unpack(self.sides)
	print("A = " .. a)
	print("B = " .. b)
	print("C = " .. c)
	print("Perimeter = " .. self.perimeter)
	print("Area = " .. string.format("%.2f", self.area))
end

return Triangle
