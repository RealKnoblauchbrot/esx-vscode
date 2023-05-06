---@meta

--Returns a random string in the specified length
---@param length number
---@return string randomString
function ESX.GetRandomString(length)
  return randomString
end

--Returns the ESX config and its current values.
---@return ESX_Config Config
function ESX.GetConfig() -----------------------------------------------
  return Config
end


--Returns The weapon and its full weapon name.
---@param weaponName string
---@return string index Weapon name
---@return ESX_Weapon weapon Weapon object
function ESX.GetWeapon(weaponName)
  return index, weapon
end

--Get weapon from weapon Hash
---@param weaponHash string
---@return string index Weapon name
---@return ESX_Weapon weapon Weapon object
function ESX.GetWeaponFromHash(weaponHash)
  return index, weapon
end

--Gets the complete weapon list and label.
---@param byHash boolean
---@return ESX_Weapon[]
function ESX.GetWeaponList(byHash)
  return byHash and weaponsByHash or Config.Weapons
end

--Gets the weapon label for a given weapon.
---@param weaponName string
---@return string weaponLabel
function ESX.GetWeaponLabel(weaponName)
  return weaponLabel
end

--Returns the weapon component object for a weapon. Includes the component label, name and hash key. See the weapon config file for the available components.
---@param weaponName string
---@param weaponComponent string
---@return ESX_Weapon component
function ESX.GetWeaponComponent(weaponName, weaponComponent)
  return component
end

--Dumps the given table to a readable string with a tree structure.
---@param table table
---@param nb number
---@return string tableAsString
function ESX.DumpTable(table, nb)
  return tableAsString
end

--Rounds off a number, and optionally you can parse how many decimals you want (defaults to 0)
---@param value number
---@param numDecimalPlaces number
---@return number
function ESX.Round(value, numDecimalPlaces)
  return ESX.Math.Round(value, numDecimalPlaces)
end