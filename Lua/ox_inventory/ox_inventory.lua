---@meta

---@class ExtendedPlayer
local ExtendedPlayer = {

  ---Set Inventory data
  ---@param weight number
  ---@param maxWeight number
  ---@param items ESX_Item[]
  ---@param money number
  syncInventory = function(weight, maxWeight, items, money) end
}

---@alias Ox_InventoryHookEvents
---| "swapItems" Triggered when moving any item from one slot to another, or when "giving" an item. <br>By returning false, you can cancel the action and revert the inventory state.
---| "openInventory" Triggered when a player tries to open a secondary inventory. <br>By returning false, you can cancel the action and keep the player's inventory closed.
---| "createItem"
---| "buyItem"
---| "craftItem"

---@class Ox_InventoryHookOptions: table
---@field print? boolean Print to the console when triggering the event
---@field itemFilter? { [string]: true } The event will only trigger for items defined as keys in a set
---@field inventoryFilter? string[] The event will only trigger for inventories that match one of the [patterns](http://www.easyuo.com/openeuo/wiki/index.php/Lua_Patterns_and_Captures_(Regular_Expressions)) in the array.
---@field typeFilter? { [string]: true } The event will only trigger for inventories with one of the provided types (e.g. 'player', 'stash')

exports["ox_inventory"] = {
  --<h3>(Serverside Only)</h3>
  --Event hooks allow 3rd party resources to define new behaviour without modifying the inventory code directly.
  ---@param event Ox_InventoryHookEvents
  ---@param cb fun(payload: table)
  ---@param options? Ox_InventoryHookOptions
  ---@return number hookId
  registerHook = function(ignoreThis, event, cb, options)
    return hookId
  end,

  --<h3>(Serverside Only)</h3>
  --Removes a hook created by the invoking resource with the the specified id. <br>If no id is specified then all hooks registered by the resource are removed.
  ---@param id? number
  removeHooks = function(ignoreThis, id) end

}