---@meta

---[ESX Documentation](https://documentation.esx-framework.org/legacy/Server/)
---@class ESX
---@field Items table All items registered in the Database or ox_inventory
---@field Jobs table All jobs registered in the Database
---@field Players ExtendedPlayer[] All Extended Players
ESX = {}

--<h3>(Serverside Only)</h3>
--Registers a server callback, which is used for sending Server Data, to a client.
---@param eventName string
---@param callback fun(src: number, cb: function, ...: any) Function to run
function ESX.RegisterServerCallback(eventName, callback) end

--<h3>(Serverside Only)</h3>
--Trigger a Client callback (Never trust data from the client)
---@param player number playerId/source
---@param eventName string
---@param callback function
---@param ... any
function ESX.TriggerClientCallback(player, eventName, callback, ...) end

--<h3>(Serverside Only)</h3>
--Writes a trace if debugging is enabled in the configuration es_extended file.
---@param msg string Anything to print to console
function ESX.Trace(msg) end

--<h3>(Serverside Only)</h3>
--Registers A command using ESX functions.
---@param name string|table Name/s of Command/s
---@param group string Minimum Permission Group
---@param cb fun(xPlayer: ExtendedPlayer, args: table, showError: boolean) Function to run
---@param allowConsole boolean Can Be ran from console
---@param suggestion? table Chat Suggestion
---@param arguments? table Command Arguments
function ESX.RegisterCommand(name, group, cb, allowConsole, suggestion, arguments)
  cb(xPlayer, args, showError)
end

--<h3>(Serverside Only)</h3>
--Returns an array of all users. You can use this function to filter players to find specific types of people such as police or admins.
---@param key string group or job
---@param value string The Group or Job you want to filter
---@return ExtendedPlayer[] xPlayers
function ESX.GetExtendedPlayers(key, value)
  return ESX.Players
end

--<h3>(Serverside Only)</h3>
--Returns the ESX player object from a server id. Returns nil for invalid players.
---@param source number The Server ID of the Target Player
---@return ExtendedPlayer xPlayer
function ESX.GetPlayerFromId(source) 
  return xPlayer
end

--<h3>(Serverside Only)</h3>
--Returns the ESX player object from the Rockstar identifier. Returns nil if no player is found.
---@param identifier string The Rockstar identifier of the Target Player
---@return ExtendedPlayer xPlayer
function ESX.GetPlayerFromIdentifier(identifier)
  return xPlayer
end

--<h3>(Serverside Only)</h3>
--Returns the player's Identifier
---@param playerId any The Server ID of the Target Player
---@return string identifier
function ESX.GetIdentifier(playerId) 
  return identifier
end

--<h3>(Serverside Only)</h3>
--Get vehicle type
---@param model string|number Vehicle model
---@param player number playerId
---@param cb function Function to run
function ESX.GetVehicleType(model, player, cb) end

--<h3>(Serverside Only)</h3>
--Logs to a Discord Webhook specified in  es_extended/Config.logs.lua.
---@param name string Webhook name (found in Config.logs.lua)
---@param title string Webhook Title
---@param color string Webhook Colour (found in Config.logs.lua)
---@param message string Message to log
function ESX.DiscordLog(name, title, color, message) end

--<h3>(Serverside Only)</h3>
--Logs to a Discord Webhook specified in  es_extended/Config.logs.lua.
---@param name string Webhook name (found in Config.logs.lua)
---@param title string Webhook Title
---@param color string Webhook Colour (found in Config.logs.lua)
---@param fields table Fields To Log
function ESX.DiscordLogFields(name, title, color, fields) end

--<h3>(Serverside Only)</h3>
--Refresh All Jobs
function ESX.RefreshJobs() end

--<h3>(Serverside Only)</h3>
--Register an item as usable.
---@param item string Item to register as usable
---@param cb function Callback function
function ESX.RegisterUsableItem(item, cb) end

--<h3>(Serverside Only)</h3>
--Make a Player use an item
---@param source number
---@param item string
---@param ... any
function ESX.UseItem(source, item, ...) end

--<h3>(Serverside Only)</h3>
--No Idea what this does, use with caution
---@param index any
---@param overrides any
function ESX.RegisterPlayerFunctionOverrides(index, overrides) end

--<h3>(Serverside Only)</h3>
--No Idea what this does, use with caution
---@param index any
function ESX.SetPlayerFunctionOverride(index) end

--<h3>(Serverside Only)</h3>
--Returns an item label.
---@param item string Item name
---@return string itemLabel
function ESX.GetItemLabel(item) 
  return ESX.Items[item].label
end

--<h3>(Serverside Only)</h3>
--Returns all known jobs along with their grades.
---@return table jobs
function ESX.GetJobs()
  return ESX.Jobs
end

--<h3>(Serverside Only)</h3>
--Returns all usable items
---@return table items
function ESX.GetUsableItems()
  return usableItems
end

--<h3>(Serverside Only)</h3>
--<h4>(Does not work with ox_inventory)</h4>
--Creates a pickup
---@param type string The pickup type, valid inputs: item_standard for items, item_money for cash, item_account for an account and item_weapon for weapons
---@param name string The name of either the item, account or weapon
---@param count number The count of the item, cash, account or weapon ammo
---@param label string The pickup label drawn
---@param playerId number The player server id who created the pickup, used to determine pickup spawn point
---@param components? table Only used when type is item_weapon, an index-value table with components
---@param tintIndex? number Only used when type is item_weapon, a tint index
function ESX.CreatePickup(type, name, count, label, playerId, components, tintIndex) end

--<h3>(Serverside Only)</h3>
--Returns whether or not the job and grade specified is valid.
---@param job string The name of the job.
---@param grade number The grade of the job.
---@return boolean isValid Is the job and grade valid?
function ESX.DoesJobExist(job, grade)
  return ESX.Jobs[job] and ESX.Jobs[job].grades[grade]
end

return ESX