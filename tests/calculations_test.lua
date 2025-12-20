local test_triangle = require("src.lua.calculations")
local luatest = require("lib.lua.lunatest")
require("io")

ORIGINAL_FUNCTION = io.read

function createTriangle_test()
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

	local triangle = test_triangle.createTriangle()
	io.read = ORIGINAL_FUNCTION

	luatest.assert_not_nil(triangle)
	luatest.assert_equal(triangle.sides[1], 4)
	luatest.assert_equal(triangle.sides[2], 5)
	luatest.assert_equal(triangle.sides[3], 4)
	luatest.assert_not_nil(triangle.perimeter)
	luatest.assert_not_nil(triangle.area)
end

function getTriangleArea_test()
	local triangle = test_triangle.new(3, 4, 5)
	local area = triangle:getArea()
	luatest.assert_equal(string.format("%.2f", area), "6.00")
end

function getPerimeter_test()
	local triangle = test_triangle.new(4, 5, 4)
	local perimeter = triangle:getPerimeter()
	luatest.assert_equal(perimeter, 13)
end

function isTriangle_test()
	local triangle = test_triangle.new(4, 5, 4)
	local result = triangle:isTriangle()
	luatest.assert_true(result)
end

function isNotTriangle_test()
	local triangle = test_triangle.new(1, 2, 10)
	local result = triangle:isTriangle()
	luatest.assert_false(result)
end

luatest.run()
