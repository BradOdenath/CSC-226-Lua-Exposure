print("Brad Odenath Midterm Problem 2B")

function isAcceptableRoot(number)
	local root = math.sqrt(number)
	return (root <= 200 and root >= 100)
end

function main()
	local arrayOfNumericNumbers = {}
	
	print("Please input 10 numbers")
	for i = 1, 10 do
		arrayOfNumericNumbers[i] = tonumber(io.read())
	end
	
	for i = 1,10 do
		if isAcceptableRoot(arrayOfNumericNumbers[i]) then
			print("The square root of " .. arrayOfNumericNumbers[i] 
				.. " is " .. math.sqrt(arrayOfNumericNumbers[i]))
		end
	end
	
end

main()