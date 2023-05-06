---@meta

ESX.Math = {}

--Rounds off a number, and optionally you can parse how many decimals you want (defaults to 0)
---@param value number
---@param numDecimalPlaces number
---@return number roundedNumber
function ESX.Math.Round(value, numDecimalPlaces)
  return roundedNumber
end

--Groups numbers, making them easier to understand by humans. Used in most nofications when money is showed, for example when buying a new car at the vehicle shop.
---@param value number
---@return string groupedNumber
function ESX.Math.GroupDigits(value)
	return groupedNumber
end

--Trims a string, removing all trailing whitespaces. Often used when sanitizing the GetVehicleNumberPlateText() native.
---@param value string
---@return string trimmedString
function ESX.Math.Trim(value)
  return trimmedString
end