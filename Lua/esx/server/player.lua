---@meta


---@class ExtendedPlayer: ESX_PlayerData
--<b>Only available on Serverside
ExtendedPlayer = {}

--Triggers an client event for the player. <br> Example:
--```lua 
--ESX.RegisterCommand('noclip', 'admin', function(xPlayer, args) -- register a coammnd
--  xPlayer.triggerEvent('esx:noclip') -- Triggers The client event for the Source Player
--end, false)
--```
---@param eventName string Event name
---@param ...? any Variable number of arguments
function ExtendedPlayer.triggerEvent(eventName, ...) end



--Sets the player's coords (teleports) <br> Example:
--```lua 
-- ESX.RegisterCommand('setcoords', 'admin', function(xPlayer, args, showError)
-- 	xPlayer.setCoords({x = 600.0, y = 112.4, z = 65.5})
-- end, false)
--```
---@param coords Coordinate The coords to be teleported to. Supports both vector3 and table types. If using a table type you can also specify heading to set the entity heading upon teleportation
function ExtendedPlayer.setCoords(coords) end

-- Should not be used
-- function ExtendedPlayer.updateCoords() end

--Returns the player's current coordinates on the server. The optional boolean useVector argument is for returning a vector3 type. Keep in mind that the coords sync interval can be adjusted in the configuration file in case you want to get precise player coords. <br> Example:
--```lua 
-- ESX.RegisterCommand('printCoords', 'admin', function (xPlayer, args, showError)
--   local coords = xPlayer.getCoords(true) -- Get coordinates as vector3
--   local distance = #(coords - vector3(610.0, 120.2, 60.3))
--
--   print(distance)
-- end, false)
--```
---@param useVector? boolean Returns an vector3 type if set to true, and normally a table with x, y and z pairs
---@return vector3
function ExtendedPlayer.getCoords(useVector)
  return coords  
end

--Kicks a player with a reason. <br> Example:
--```lua
-- if xPlayer.getName() == 'offensive name' then -- Check for a certain name
--   xPlayer.kick('offensive Name') -- kick them
-- end
--```
---@param reason string Kick reason, will be shown to player
function ExtendedPlayer.kick(reason) end

--Sets the player cash balance. <br> Example:
--```lua
-- xPlayer.setMoney(100000) -- Set player's cash to 100k
--```
---@param money number New money amount
function ExtendedPlayer.setMoney(money) end

--Returns the current cash balance. <br> Example:
--```lua
-- local Cost = 2500 -- Define a suitable cost
-- local PlayerMoney = xPlayer.getMoney() -- Get the Current Player`s Balance.
--
-- if PlayerMoney >= Cost then -- check if the Player`s Money is more or equal to the cost.
--   print('you can afford to pay!' ) -- Player has enough money
--   xPlayer.removeMoney(Cost) -- remove Cost from balance
-- else
--   print('you cannot afford this!') -- Player`s money is less then cost
-- end
--```
---@return number money
function ExtendedPlayer.getMoney()
  return ExtendedPlayer.getAccount('money').money
end

--Adds money to player's cash.
--```lua
--xPlayer.addMoney(50000) -- Add 50k to player's cash
--```
---@param money number Money amount
---@param reason? string Reason to add Money
function ExtendedPlayer.addMoney(money, reason) end

--Remove money.
--```lua
--xPlayer.removeMoney(50000) -- Remove 50k from player's cash
--```
---@param money number Amount of money to remove
function ExtendedPlayer.removeMoney(money) end

--Returns the Rockstar identifier used
---@return string
function ExtendedPlayer.getIndentifier() 
  return ExtendedPlayer.identifier
end

--Set player permission group
---@param newGroup string
function ExtendedPlayer.setGroup(newGroup) end

--Returns the permission group
---@return string
function ExtendedPlayer.getGroup()
  return ExtendedPlayer.group
end

--Set a custom key in the Player Object
---@param k string
---@param v any
function ExtendedPlayer.set(k, v) end

--Return data by key from the Player Object
---@param k string
---@return unknown
function ExtendedPlayer.get(k)
  return ExtendedPlayer.variables[k]
end


--Returns all registered player accounts.
--
--The returned table contains an index-value table of all accounts, and for each child there is a key-value tabl with the following content:
---@param minimal? boolean Only get Account money
---@return table<string, ESX_Account>
function ExtendedPlayer.getAccounts(minimal)
  return ExtendedPlayer.accounts
end

--Returns details (returned in an table) for an account.
---@param account string An valid account
---@return ESX_Account
function ExtendedPlayer.getAccount(account)
  return ExtendedPlayer.accounts[account]
end

--Returns the entire player inventory.
---@param minimal? boolean Return inventory in a key-value table where key is item name, and only add items with count over 0 to that table.
---@return ESX_Item[]
function ExtendedPlayer.getInventory(minimal)
  return ExtendedPlayer.inventory
end

--Returns the current player job object.
---@return ESX_Job job player's job
function ExtendedPlayer.getJob()
  return ExtendedPlayer.job
end

--Returns the player loadout. <br> Returns empty table with ox_inventory installed check for the item instead
---@param minimal boolean
---@return ESX_Weapon[]
function ExtendedPlayer.getLoadout(minimal)
  return ExtendedPlayer.loadout
end

--If you have ESX identity Installed, This will return the Character Name, If not, it will return the FiveM name.
---@return string
function ExtendedPlayer.getName()
  return ExtendedPlayer.name
end

--Sets the player name.
---@param newName string New player name
function ExtendedPlayer.setName(newName) end

--Sets money for an account.
---@param accountName string Valid accounts can be found in configuration file
---@param money number Amount of money
---@param reason? string 
function ExtendedPlayer.setAccountMoney(accountName, money, reason) end

--Adds Money Instead the specified account.
---@param accountName string Valid accounts can be found in configuration file
---@param money number Amount of money
---@param reason? string
function ExtendedPlayer.addAccountMoney(accountName, money, reason) end

--Removes account money.
---@param accountName string Valid accounts can be found in configuration file
---@param money number Amount of money
---@param reason? string
function ExtendedPlayer.removeAccountMoney(accountName, money, reason) end

--Retuns specified inventory item.
---@param name string Item name
---@param metadata? any (Only available with ox_inventory)
---@return ESX_Item item
function ExtendedPlayer.getInventoryItem(name, metadata)
  return item
end

--Adds an item to the player's inventory 
--(Will not check if player has enough space in inventory, use xPlayer.canCarryItem(item, count))
---@param name string Item name
---@param count number Count of item to add
---@param metadata? any (Only available with ox_inventory)
---@param slot? number (Only available with ox_inventory)
function ExtendedPlayer.addInventoryItem(name, count, metadata, slot) end

--Removes specified item in player's inventory
---@param name string Item name, valid items can be found in database table items
---@param count number Amount of the item to remove
---@param metadata? any (Only available with ox_inventory)
---@param slot? number (Only available with ox_inventory)
function ExtendedPlayer.removeInventoryItem(name, count, metadata, slot) end

--Sets specified item count in inventory
---@param name string Item name, valid items can be found in database table items
---@param count number New item count
---@param metadata? any (Only available with ox_inventory)
---@param slot? number (Only available with ox_inventory) Set item in specific slot
function ExtendedPlayer.setInventoryItem(name, count, metadata, slot) end

--Returns the current player weight in a number type, can be used to do calculations.
---@return number weight
function ExtendedPlayer.getWeight()
  return ExtendedPlayer.weight
end

--Returns the player's max weight
---@return number maxWeight
function ExtendedPlayer.getMaxWeight()
  return ExtendedPlayer.maxWeight
end

--Is used to determinate if a player can carry an item.
---@param name string Item name
---@param count number Item count
---@param metadata? any 
---@return boolean canCarry
function ExtendedPlayer.canCarryItem(name, count, metadata)
  return canCarry
end

--Is used to determinate if a player can swap an item for some other item.
---@param firstItem string First item name
---@param firstItemCount number First item count
---@param testItem string Test item name
---@param testItemCount number Test item count
---@return boolean canSwapItem
function ExtendedPlayer.canSwapItem(firstItem, firstItemCount, testItem, testItemCount)
  return canSwapItem
end

--Set the player's max Weight
---@param newMaxWeight number
function ExtendedPlayer.setMaxWeight(newMaxWeight) end

--Sets the player job, the job must be defined in the jobs database table.
---@param job string Job name
---@param grade number Job grade
function ExtendedPlayer.setJob(job, grade) end

--Adds a weapon to player's loadout.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param ammo number Ammo count
function ExtendedPlayer.addWeapon(weaponName, ammo) end

--Adds a weapon component to specified weapon, if the player has it, the available component list can be found in the weapon configuration file.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param weaponComponent string Weapon component
function ExtendedPlayer.addWeaponComponent(weaponName, weaponComponent) end

--Adds the parsed ammo to the specified weapon, if the player has it.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponAmmo string Weapon name
---@param ammoCount number Ammo to add
function ExtendedPlayer.addWeaponAmmo(weaponAmmo, ammoCount) end

--Updates the current ammo of specified weapon weapon, if the player has it.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param ammoCount number New ammo for weapon
function ExtendedPlayer.updateWeaponAmmo(weaponName, ammoCount) end

--Sets the player weapon tint from the tint index, if the player has it.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param weaponTintIndex number Weapon tint index
function ExtendedPlayer.setWeaponTint(weaponName, weaponTintIndex) end

--Returns the tint index of the specified weapon from the Player.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string
---@return weapon_tints tint
function ExtendedPlayer.getWeaponTint(weaponName)
  return ExtendedPlayer.loadout[weaponName].tintIndex
end

--Removes specified weapon from player's loadout
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
function ExtendedPlayer.removeWeapon(weaponName) end

--Removes a weapon component from a player, if the player has it. The available component list can be found in the weapon configuration file (config.weapons.lua).
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param weaponComponent string Weapon component
function ExtendedPlayer.removeWeaponComponent(weaponName, weaponComponent) end

--Returns an boolean if the player has the specified weapon component for a given weapon. The available component list can be found in the weapon configuration file (config.weapons.lua).
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@param weaponComponent string Weapon component
---@return boolean hasWeaponComponent
function ExtendedPlayer.hasWeaponComponent(weaponName, weaponComponent)
  return hasWeaponComponent
end

--Returns if the player has the specified weapon.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string Weapon name
---@return boolean hasWeapon
function ExtendedPlayer.hasWeapon(weaponName)
  return hasWeapon
end

--Checks if the player has the specified item, if they do, it will return item and item count
---@param item string Item name
---@param metadata? any Item metadata
---@return boolean hasItem 
function ExtendedPlayer.hasItem(item, metadata)
  return hasItem
end

--Returns the loadout Key and a weapon object for the weapon if the player has it.
--<h4>(Does not work with ox_inventory)</h4>
---@param weaponName string
---@return number loudoutKey
---@return ESX_Weapon weapon
function ExtendedPlayer.getWeapon(weaponName)
  return loudoutKey, weapon
end

--Shows a basic notification to the player.
-- - \~r~ Red
-- - \~b~ Blue
-- - \~g~ Green
-- - \~y~ Yellow
-- - \~p~ Purple
-- - \~o~ Orange
-- - \~g~ Grey
-- - \~m~ Dark Grey
-- - \~u~ Black
-- - \~n~ New Line
-- - \~s~ White (default)
-- - \~w~ White
-- - \~h~ Toggle Bold
---@param msg string
function ExtendedPlayer.showNotification(msg) end


--Shows a help notification with a message. These help notification support displaying button inputs, see this [list](https://docs.fivem.net/docs/game-references/controls/)
---@param msg string The message to display
---@param thisFrame? boolean Only show this frame? Should be used with scripts that show notifications in a loop
---@param beep? boolean Play the beep sound?
---@param duration? number Duration to show the help notification in milliseconds
function ExtendedPlayer.showHelpNotification(msg, thisFrame, beep, duration) end

--Get player meta
---@param index string
---@param subIndex string
---@return string|table
function ExtendedPlayer.getMeta(index, subIndex)
  return meta
end

--Set player meta
---@param index string
---@param value number|string|table
---@param subValue? string
function ExtendedPlayer.setMeta(index, value, subValue) end

---Clear player meta
---@param index string|table
function ExtendedPlayer.clearMeta(index) end

