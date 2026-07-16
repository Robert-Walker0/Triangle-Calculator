local lunatest = require("lib.lua.lunatest")
local test_function = require("src.lua.input_utils")

function test_getInput_number()
	local original_read = io.read
	io.read = function()
		return "21"
	end

	local userInput = test_function.getInput()
	io.read = ORIGINAL_FUNCTION
	lunatest.assert_equal(userInput, 21)
end

function test_getInput_recursion()
	local original_read = io.read
	local timesCalled = 0

	io.read = function()
		if timesCalled == 0 then
			timesCalled = timesCalled + 1
			return "Non-numerical String"
		else
			timesCalled = timesCalled + 1
			return "432"
		end
	end

	local recusiveCall = test_function.getInput()
	io.read = original_read
	lunatest.assert_equal(recusiveCall, 432)
end

lunatest.run()
