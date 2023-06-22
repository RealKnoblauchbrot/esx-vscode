---@meta

---@alias OX_InventoryTypes "player"|"shop"|"stash"|"crafting"|"container"|"drop"|"glovebox"|"trunk"|"dumpster"|string

---OX Weapon
---@class OX_Weapon[: table]
---@field ammo? string Name of the item used as ammo
---@field hash number
---@field label string
---@field melee boolean
---@field metadata OX_WeaponMetadata
---@field name string Name of the item.
---@field slot number
---@field weight number

---OX Weapon Metadata
---@class OX_WeaponMetadata[: table]
---@field ammo? number Amount of ammo loaded into the weapon.
---@field components? table Array of component item names, used to apply weapon components.
---@field durability? number
---@field registered? string Name of the player that bought the weapon at a shop.
---@field serial? string

---@class OX_SlotWithItem
---@field name string
---@field label string
---@field weight number
---@field slot number
---@field count number
---@field metadata { [string]: any }
---@field description? string
---@field stack? boolean
---@field close? boolean

---@class OX_Player
---@field source number
---@field identifier string
---@field name string
---@field groups? table
---@field sex? string
---@field dateofbirth? string

---@class OX_RegisteredItem[: table]
---@field label string
---@field weight number
---@field degrade? number
---@field client? table
---@field server? table
---@field buttons? table
---@field stack? boolean
---@field close? boolean
---@field consume? number
---@field allowArmed? number

exports["ox_inventory"] = {
  --- START OF CLIENTSIDE ---

  --<h3>(Clientside Only)</h3>
  --Opens an inventory using the passed data.
  ---@param invType OX_InventoryTypes
  ---@param data number|string|table
  openInventory = function(_, invType, data) end,

  --<h3>(Clientside Only)</h3>
  --If possible opens the nearby player's inventory.
  --
  --The player trying to open the inventory must be able to open their own and if the player does not have a police job, the target player must be fatally injured or playing one of the death anims.
  openNearbyInventory = function() end,

  --<h3>(Clientside Only)</h3>
  --Closes the player's inventory.
  closeInventory = function() end,

  --<h3>(Clientside Only)</h3>
  --Uses the passed item, then triggers the callback function.
  --Should be calling during item callbacks to utilise the builtin methods (server checks, progress bar, etc.).
  ---@param data table
  ---@param cb? function
  useItem = function(_, data, cb) end,

  --<h3>(Clientside Only)</h3>
  --Uses the item in the given inventory slot.
  ---@param slot number
  useSlot = function(_, slot) end,

  --<h3>(Clientside Only)</h3>
  --Forces the secondary-inventory key to open the passed inventory. Can be useful to enable inventory access while standing inside a marker.
  ---@param id string|number Stash id
  ---@param owner? string|number
  setStashTarget = function(_, id, owner) end,

  --<h3>(Clientside Only)</h3>
  --Get data for the currently equipped weapon.
  ---@return OX_Weapon currentWeapon
  getCurrentWeapon = function() 
    return currentWeapon
  end,

  --<h3>(Clientside Only)</h3>
  --Sets a metadata property to display in the tooltip.
  ---@param metadata table|string If metadata is a string then it's the metadata property you want to display, value is not optional then.<br>Can be a table of key-value pairs, key being the metadata property and value being the label for that property.
  ---@param value? string Label for the string metadata property to be displayed.
  displayMetadata = function (_, metadata, value) end,

  --<h3>(Clientside Only)</h3>
  --Enables the weapon wheel, but disables the use of inventory items.
  --
  --Mostly used for weaponised vehicles, though could be called for "minigames"
  ---@param state boolean
  weaponWheel = function (_, state) end,

  --<h3>(Clientside Only)</h3>
  --Searches the inventory for an item, or list of items, with the result varying based on the first argument.
  ---@param search 'slots' | 1 | 'count' | 2
  ---@param item table | string
  ---@param metadata? table | string
  ---@return boolean|table
  Search = function (_, search, item, metadata)
    return countOrSlots
  end,

  --<h3>(Clientside Only)</h3>
  --Get the total item count for all items in the player's inventory with the given name and metadata.
  ---@param itemName string
  ---@param metadata? any
  ---@param strict? boolean Strictly match metadata properties, otherwise use partial matching.
  ---@return number
  GetItemCount = function (_, itemName, metadata, strict)
    return count
  end,

  --<h3>(Clientside Only)</h3>
  --Get all items in the player's inventory.
  ---@return tablelib
  GetPlayerItems = function ()
    return inventory
  end,

  --<h3>(Clientside Only)</h3>
  --Get the total weight of all items in the player's inventory.
  ---@return number
  GetPlayerWeight = function ()
    return weight
  end,

  --<h3>(Clientside Only)</h3>
  --Get the maximum carry weight of the player's inventory.
  ---@return number
  GetPlayerMaxWeight = function ()
    return maxWeight
  end,

  --<h3>(Clientside Only)</h3>
  --Get a slot id in the player's inventory matching the given name and metadata.
  ---@param itemName string
  ---@param metadata? any
  ---@param strict? boolean Strictly match metadata properties, otherwise use partial matching.
  ---@return number?
  GetSlotIdWithItem = function (itemName, metadata, strict)
    return slotId
  end,

  --<h3>(Clientside Only)</h3>
  --Get data for a slot in the player's inventory matching the given name and metadata.
  ---@param itemName string
  ---@param metadata? any
  ---@param strict? boolean Strictly match metadata properties, otherwise use partial matching.
  ---@return OX_SlotWithItem?
  GetSlotWithItem = function (itemName, metadata, strict)
    return slot
  end,

  --<h3>(Clientside Only)</h3>
  --Get data all slots in the player's inventory matching the given name and metadata.
  ---@param itemName string
  ---@param metadata? any
  ---@param strict? boolean Strictly match metadata properties, otherwise use partial matching.
  ---@return OX_SlotWithItem[]?
  GetSlotsWithItem = function (itemName, metadata, strict)
    return slots
  end,



  --- START OF SERVERSIDE ---

  --<h3>(Serverside Only)</h3>
  --Creates and sets the player's inventory.
  ---@param player OX_Player
  ---@param data? table If not provided will load player's inventory data from the db.
  setPlayerInventory = function (player, data) end,

  --Opens an inventory using the passed data. Forces a player to open an inventory, without usual security checks (groups, coords).
  ---@param playerId number
  ---@param invType OX_InventoryTypes
  ---@param data number|string|table
  forceOpenInventory = function (playerId, invType, data) end,

  --Update the internal reference to vehicle stashes, without triggering a save or updating the database.
  ---@param oldPlate string
  ---@param newPlate string
  UpdateVehicle = function (oldPlate, newPlate) end,


  -- TODO: ADD TYPES AND CLASSES

  -- ---@param inv inventory
  -- ---@param item table | string
  -- ---@param count number
  -- ---@param metadata? table | string
  -- ---@param slot? number
  -- ---@param cb? fun(success?: boolean, response: string|SlotWithItem|nil)
  -- ---@return boolean? success, string|SlotWithItem|nil response
  -- AddItem = function (inv, item, count, metadata, slot, cb)
  --   return success, response
  -- end,


  --- START OF SHARED ---

  --Returns a table of all registered items. The format is as defined in data/items.lua.
  ---@return OX_RegisteredItem
  Items = function() 
    return items
  end,
}