local utils = {}

function utils.getInput()
	while true do
		local input = io.read()
		local results = tonumber(input)

		if results then 
			return results
		end

		print("Expected a number but got a string!")
	end
end

return utils
