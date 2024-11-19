require "io"

local utils = {}

function utils.getInput()
	local value = io.read()
	local results = tonumber(value)
	if results == nil then
		print("Expected number but got string")
		return getInput()
	elseif type(results) == "number" then
		return results
	end
end

return utils
