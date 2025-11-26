local lunatest = require("lib.lua.lunatest")
local test_function = require("src.lua.input_utils")
require("io")

ORIGINAL_FUNCTION = io.read

function test_getInput_number()
	io.read = function()
		return "21"
	end
	local userInput = test_function.getInput()
	io.read = ORIGINAL_FUNCTION
	lunatest.assert_equal(userInput, 21)
end

function test_getInput_recursion()
	local timesCalled = 0
	io.read = function()
		if timesCalled == 0 then
			timesCalled = timesCalled + 1
			return "Recursive"
		else
			timesCalled = timesCalled + 1
			return "432"
		end
	end

	local recusiveCall = test_function.getInput()
	lunatest.assert_equal(recusiveCall, 432)
	io.read = ORIGINAL_FUNCTION
end

lunatest.run()
