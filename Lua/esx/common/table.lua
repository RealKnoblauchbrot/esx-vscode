---@meta

ESX.Table = {}

--nil proof alternative to #table
---@param t table
---@return number sizeOfTable
function ESX.Table.SizeOf(t)
  return sizeOfTable
end

--Set all table content to true
---@param t table
function ESX.Table.Set(t) end

--Get Index of Value in table. Returns -1 if not found
---@param t table
---@param value any
---@return number
function ESX.Table.IndexOf(t, value)
  return index
end

--The same as ESX.Table.IndexOf but starts at the end of table <br>
--Get Index of Value in table. Returns -1 if not found
---@param t table
---@param value any
---@return number
function ESX.Table.LastIndexOf(t, value)
  return index
end

--TODO: Explain this and add Example
---@param t table
---@param cb fun(valueFromTable: any)
---@return any valueFromTable
function ESX.Table.Find(t, cb)
  for i=1, #t, 1 do
		if cb(t[i]) then
			return t[i]
		end
	end

	return nil
end

--TODO: Explain this and add Example
---@param t table
---@param cb fun(valueFromTable: any)
---@return number index
function ESX.Table.FindIndex(t, cb)
  for i=1, #t, 1 do
		if cb(t[i]) then
			return i
		end
	end

	return -1
end

--TODO: Explain this and add Example
---@param t table
---@param cb fun(valueFromTable: any)
function ESX.Table.Filter(t, cb)
  local newTable = {}

	for i=1, #t, 1 do
		if cb(t[i]) then
			table.insert(newTable, t[i])
		end
	end

	return newTable
end

--TODO: Explain this and add Example
---@param t table
---@param cb fun(value: any, i: number)
function ESX.Table.Map(t, cb)
  local newTable = {}

	for i=1, #t, 1 do
		newTable[i] = cb(t[i], i)
	end

	return newTable
end


--Reverse a table
---@param t table Table that should be reversed
---@return table reversedTable Given table but reversed
function ESX.Table.Reverse(t)
  return reversedTable
end

--Clone a Table
---@param t table
---@return table
function ESX.Table.Clone(t)
  return clonedTable
end

--Concat two tables
---@param t1 table
---@param t2 table
---@return table concattedTable
function ESX.Table.Concat(t1, t2)
  return concattedTable
end

--Return a String with Joined values from given table and that are seperated with given seperator
---@param t table
---@param sep string
---@return string
function ESX.Table.Join(t, sep)
  return JoinedString
end

--Check if table contains given value
---@param tab table
---@param val any
---@return boolean containsValue
function ESX.Table.TableContaints(tab, val)
  return containsValue  
end

--Sort Table for pairs <br>
--if order function given, sort by it by passing the table and keys a, b <br>
--otherwise just sort the keys
---@param t table
---@param order fun(t: table, a: unknown, b: unknown)
function ESX.Table.Sort(t, order)
  return sortedTable
end