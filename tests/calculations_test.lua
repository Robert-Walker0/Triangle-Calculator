local Triangle = require("src.lua.calculations")
local lunatest = require("lib.lua.lunatest")

function createTriangle_test()
	local original_read = io.read
	local callCount = 0
	io.read = function()
		callCount = callCount + 1
		if callCount == 1 then
			return "4"
		end
		if callCount == 2 then
			return "5"
		end
		if callCount == 3 then
			return "4"
		end
	end

	local triangle = Triangle.createTriangle()

	lunatest.assert_not_nil(triangle)
	lunatest.assert_equal(triangle.sides[1], 4)
	lunatest.assert_equal(triangle.sides[2], 5)
	lunatest.assert_equal(triangle.sides[3], 4)
	lunatest.assert_not_nil(triangle.perimeter)
	lunatest.assert_not_nil(triangle.area)

	io.read = original_read
end

function getTriangleArea_test()
	local triangle = Triangle.new(3, 4, 5)
	local area = triangle:getArea()
	lunatest.assert_equal(string.format("%.2f", area), "6.00")
end

function getPerimeter_test()
	local triangle = Triangle.new(4, 5, 4)
	local perimeter = triangle:getPerimeter()
	lunatest.assert_equal(perimeter, 13)
end

function isTriangle_test()
	local triangle = Triangle.new(4, 5, 4)
	local result = triangle:isTriangle()
	lunatest.assert_true(result)
end

function isNotTriangle_test()
	local triangle = Triangle.new(1, 2, 10)
	local result = triangle:isTriangle()
	lunatest.assert_false(result)
end

lunatest.run()
