require("io")

local utils = {}

function utils.getInput()
	local results = tonumber(io.read())
	if results then
		return results
	end
	print("Expected number but got string")
	return utils.getInput()
end

return utils
