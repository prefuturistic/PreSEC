local PreSEC = {}

local abrvList = {'x', 'z', 'b', 'n', 'qq', 'qi', 'ppe', 'a', 'e', 'eiorirqoewqhfnnn', "xndujjw", "hello", 'wjharnn', 'what', 'prefuturistic'}
local abrvNumList = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0'}

function PreSEC.ABRVCheck()
	local securityTable = {}
	
	
	
	local randit = math.random(1,10)

	for count = 0, randit, 1 do
		local secRandit = math.random(1,99)
		table.insert(securityTable, secRandit)
	end
	
	
	
	local abrvListMax = 0
	for i in pairs(abrvList) do
		abrvListMax = abrvListMax + 1
	end
	
	local letterMath = math.random(1,abrvListMax)
	
	
	
	
	local letter = abrvList[letterMath]
	
	local numberString = letter
	for i in pairs(securityTable) do
		local numberStringConvert = tostring(securityTable[i])
		numberString = numberString .. numberStringConvert
	end
	
	print(numberString)
end

return PreSEC
