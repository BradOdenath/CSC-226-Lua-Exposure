print("Brad Odenath Midterm Problem 2A") -- I apologize for going overkill.  I missed coding in LUA

local arrayOfPositivity = -- Let array = table :)
	{11,22,33,44,55,
	14,26,37,48,59,
	18,29,40,51,62}
local avgOfElements
local sumOfElements
local fiveLargest

function getArraySum(tempArray)
	local arraySum = 0

	for i = 1, #arrayOfPositivity do
		arraySum = arraySum + tempArray[i] -- += is invalid syntax .. thanks, Lua
	end --end for
	
	return arraySum
end

function getArrayAverage(tempArray)
	local arraySum = getArraySum(tempArray)
	
	return arraySum/#tempArray
end

function getArrayFiveLargest(tempArray)
	table.sort(tempArray)
	if (#tempArray > 5) then--Thinking in terms of expansion (what if longer/shorter array?)
		return table.concat(tempArray, ", ", (#tempArray-5), #tempArray) 
	else
		return table.concat(tempArray, ", ")
	end
end

sumOfElements = getArraySum(arrayOfPositivity)	--Compute sum of elements
avgOfElements = getArrayAverage(arrayOfPositivity)--Compute avg of elements
fiveLargest = getArrayFiveLargest(arrayOfPositivity)	--Compute five largest elements

--Output
print("Size of the array: " .. #arrayOfPositivity)
print("Sum of the array elements: " .. sumOfElements)	
print("Average of array elements: " .. avgOfElements)
print("Five largest values in array: " .. fiveLargest)
