---@meta

---[ESX Documentation](https://documentation.esx-framework.org/legacy/Client/)
---@class ESX
---@field PlayerData ESX_PlayerData
---@field PlayerLoaded boolean
ESX = {}

--<h3>(Clientside Only)</h3>
ESX.UI = {}
--<h3>(Clientside Only)</h3>
ESX.UI.Menu = {}
--<h3>(Clientside Only)</h3>
ESX.UI.Menu.RegisteredTypes = {}
--<h3>(Clientside Only)</h3>
ESX.UI.Menu.Opened = {}
--<h3>(Clientside Only)</h3>
ESX.Game = {}
--<h3>(Clientside Only)</h3>
ESX.Game.Utils = {}




--<h3>(Clientside Only)</h3>
--Checks if the player has loaded in.
---@return boolean
function ESX.IsPlayerLoaded()
  return ESX.PlayerLoaded
end

--<h3>(Clientside Only)</h3>
--Gets player data.
---@return table
function ESX.GetPlayerData()
  return ESX.PlayerData
end

--<h3>(Clientside Only)</h3>
--Search inventory for the specified item and count. And returns item count of item in inventory
---@param items string The item to search for
---@param count number The quantity of the item
---@return number itemCount
function ESX.SearchInventory(items, count)
  return itemCount
end

--<h3>(Clientside Only)</h3>
--Sets player data, this can Then be access with ESX.PlayerData[key]
---@param key string
---@param val any
function ESX.SetPlayerData(key, val) end

--<h3>(Clientside Only)</h3>
--Shows an advanced notification.
---@param sender string Message header
---@param subject string Message subject
---@param msg string Message content
---@param textureDict ESX_AdvancedNotificationDictionary Texture directory, see [Texture Direcotry]() for accepted values
---@param iconType ESX_AdvancedNotificationIconType Icon type
---@param flash? boolean
---@param saveToBrief? boolean
---@param hudColorIndex? number
function ESX.ShowAdvancedNotification(sender, subject, msg, textureDict, iconType, flash, saveToBrief, hudColorIndex) end

--<h3>(Clientside Only)</h3>
--Shows a help notification with a message. TThese help notification support displaying button inputs, see this [list](https://docs.fivem.net/docs/game-references/controls/)
---@param msg string The message to display
---@param thisFrame boolean Only show this frame? Should be used with scripts that show notifications in a loop
---@param beep boolean Play the beep sound?
---@param duration number Duration to show the help notification in milliseconds (Default: 5000)
function ESX.ShowHelpNotification(msg, thisFrame, beep, duration) end

--<h3>(Clientside Only)</h3>
--Shows a help notification with a message. TThese help notification support displaying button inputs, see this [list](https://docs.fivem.net/docs/game-references/controls/)
---@param msg string
---@param coords Coordinate
function ESX.ShowFloatingHelpNotification(msg, coords) end

--<h3>(Clientside Only)</h3>
--I have no Idea. Too stupid for this
---@param str string
function ESX.HashString(str) end

--<h3>(Clientside Only)</h3>
--Register Key Mapping Use [this](https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/) to get available Keys
---@param command_name string
---@param label string
---@param input_group KeyMapping
---@param key any
---@param on_press function
---@param on_release? function
function ESX.RegisterInput(command_name, label, input_group, key, on_press, on_release) end

--<h3>(Clientside Only)</h3>
--Registers a menu type.
---@param type string
---@param open function
---@param close function
function ESX.UI.Menu.RegisteredType(type, open, close)
  ESX.UI.Menu.RegisteredType[type] = {
    open = open,
    close = close
  }
end

--<h3>(Clientside Only)</h3>
--Open ESX Menu (I don't use this so i won't bother to explain it)
---@param type string
---@param namespace any
---@param name any
---@param data any
---@param submit any
---@param cancel any
---@param change any
---@param close any
---@return table
function ESX.UI.Menu.Open(type, namespace, name, data, submit, cancel, change, close)
  local menu = {}

  menu.type = type
  menu.namespace = namespace
  menu.name = name
  menu.data = data
  menu.submit = submit
  menu.cancel = cancel
  menu.change = change

  menu.close = function() 
    if close then
      close()
    end
  end

  menu.update = function(query, newData) end

  menu.refresh = function() end

  menu.setElement = function(i, key, val) end

  menu.setElements = function(newElements) end

  menu.setTitle = function(val) end

  menu.removeElement = function(query) end
  
  return menu
end

--<h3>(Clientside Only)</h3>
--Close ESX Menu (I don't use this so i won't bother to explain it)
---@param type any
---@param namespace any
---@param name any
function ESX.UI.Menu.Close(type, namespace, name) end

--<h3>(Clientside Only)</h3>
--Close All ESX Menu's (I don't use this so i won't bother to explain it)
function ESX.UI.Menu.CloseAll() end

--<h3>(Clientside Only)</h3>
--Get ESX Menu (I don't use this so i won't bother to explain it)
---@param type any
---@param namespace any
---@param name any
---@return unknown
function ESX.UI.Menu.GetOpened(type, namespace, name)
  return openedMenu
end

--<h3>(Clientside Only)</h3>
--Get All Opened Menu's
---@return table
function ESX.UI.Menu.GetOpenedMenus()
  return ESX.UI.Menu.Opened
end

--<h3>(Clientside Only)</h3>
--Check if Menu is open (I don't use this so i won't bother to explain it)
---@param type any
---@param namespace any
---@param name any
---@return boolean
function ESX.UI.Menu.IsOpen(type, namespace, name)
  return ESX.UI.Menu.GetOpened(type, namespace, name) ~= nil
end

--<h3>(Clientside Only)</h3>
--Shows an inventory item notification.
function ESX.UI.ShowInventoryItemNotification(add, item, count) end

--<h3>(Clientside Only)</h3>
--Generates a mugshot of the ped usable in various applications. <br>
--<b>warning Be sure to use UnregisterPedheadshot(mugshot) after using it, because the game only allows you 34 mugshots, and you won't be allowed to use mugshot once this limit is reached if you don't unregister it.
---@param ped string The ped handle
---@param transparent? boolean Should background of mugshot be transparent
---@return number mugshot
---@return string mugshotString
function ESX.Game.GetPedMugshot(ped, transparent)
  return mugshot, mugshotString
end

--<h3>(Clientside Only)</h3>
--Teleports an entity.
---@async
---@param entity number The entity to teleport
---@param coords Coordinate The coords to be teleported to. Supports both vector3 and table types. If using a table type you can also specify heading to set the entity heading upon teleportation
---@param cb? function The called function when the entity has been teleported
function ESX.Game.Teleport(entity, coords, cb) end

--<h3>(Clientside Only)</h3>
--Spawns an object visible to everyone on the server if not specified else.
---@async
---@param object string|number You can either specify a model, for example prop_cs_cuffs_01, or a object hash
---@param coords Coordinate The coords where the object should be spawned. You can also parse an vector type without any issues
---@param cb? fun(obj: number) The returned function when the object has been spawned. The invoked function has one argument, which is the object handle.
---@param networked? boolean Should be networked to all players
function ESX.Game.SpawnObject(object, coords, cb, networked) end

--<h3>(Clientside Only)</h3>
--Spawns a local object, which is only visible to the local player and no one else.
---@async
---@param object string|number 	You can either specify a model, for example prop_cs_cuffs_01, or a object hash
---@param coords Coordinate The coords where the object should be spawned. You can also parse an vector type without any issues
---@param cb? fun(obj: number) The returned function when the object has been spawned. The invoked function has one argument, which is the object handle.
function ESX.Game.SpawnLocalObject(object, coords, cb)
  ESX.Game.SpawnObject(object, coords, cb, false)
end

--<h3>(Clientside Only)</h3>
--Deletes the parsed vehicle.
---@param vehicle number The vehicle handle
function ESX.Game.DeleteVehicle(vehicle) end

--<h3>(Clientside Only)</h3>
--Deletes the parsed object
---@param object number The object handle
function ESX.Game.DeleteObject(object) end

--<h3>(Clientside Only)</h3>
--Spawns an vehicle visible to everyone on the server if not specified else.
---@async
---@param vehicle string|number You can either specify a model, for example blista, or a vehicle hash.
---@param coords Coordinate The coords where the vehicle should be spawned. You can also parse an vector type without any issues
---@param heading number The heading of the spawned vehicle, must contain a decimal
---@param cb? fun(vehicle: number) The returned function when the vehicle has been spawned. The invoked function has one argument, which is the vehicle handle
---@param networked? boolean
function ESX.Game.SpawnVehicle(vehicle, coords, heading, cb, networked) end

--<h3>(Clientside Only)</h3>
--Spawns a local vehicle, which is only visible to the local player and no one else.
---@async
---@param vehicle string|number You can either specify a model, for example blista, or a vehicle hash.
---@param coords any The coords where the vehicle should be spawned. You can also parse an vector type without any issues
---@param heading any The heading of the spawned vehicle, must contain a decimal
---@param cb? fun(vehicle: number) The returned function when the vehicle has been spawned. The invoked function has one argument, which is the vehicle handle
function ESX.Game.SpawnLocalVehicle(vehicle, coords, heading, cb)
  ESX.Game.SpawnVehicle(vehicle, coords, heading, cb, false)
end

--<h3>(Clientside Only)</h3>
--Returns A bool for if the Vehicle has no players inside.
---@param vehicle number Vehicle handle
---@return boolean isVehicleEmpty
function ESX.Game.IsVehicleEmpty(vehicle)
  return isVehicleEmpty
end

--<h3>(Clientside Only)</h3>
--This function gets all objects found in the game world.
function ESX.Game.GetObjects() 
  return GetGamePool('CObject')
end

--<h3>(Clientside Only)</h3>
--Gets all peds found in the game world.
---@param onlyOtherPeds? boolean Only return other peds than your own ped?
---@return number[]
function ESX.Game.GetPeds(onlyOtherPeds)
  return GetGamePool('CPed')
end

--<h3>(Clientside Only)</h3>
--Returns All vehicles in the world.
---@return number[]
function ESX.Game.GetVehicles()
  return GetGamePool('CVehicle')
end

--<h3>(Clientside Only)</h3>
--Is used to get all the active players.
---@param onlyOtherPlayers? boolean Only return other players than yourself?
---@param returnKeyBalue? boolean If set to true it will return in a key-value table where key is player client id and key being the ped handle. Otherwise it create a index-value table, with value being either the ped handle or client id depending on returnPeds
---@param returnPeds? boolean If set to true it will return the ped handle for that player, otherwise it will return the player client id
---@return string[] players Player sources
function ESX.Game.GetPlayers(onlyOtherPlayers, returnKeyBalue, returnPeds)
  return players
end

--<h3>(Clientside Only)</h3>
--Returns the closest object handle, and distance to the object.
---@param coords? Coordinate Coords to search at. (Default: Player postion)
---@param modelFilter? table Enables whitelist mode for getting closest object. The table must be key-value where the key is the model hash, and value set to true.
---@return number closestObject Handle of closest object
---@return number closestObjectDistance Distance of closest object
function ESX.Game.GetClosestObject(coords, modelFilter)
  return ESX.Game.GetClosestEntity(ESX.Game.GetObjects(), false, coords, modelFilter)
end

--<h3>(Clientside Only)</h3>
--Returns the closest ped handle, and distance to the ped.
---@param coords? Coordinate Coords to search at. (Default: Player postion)
---@param modelFilter? table Enables whitelist mode for getting closest ped. The table must be key-value where the key is the model hash, and value set to true.
---@return number closestPed Handle of closest entity
---@return number closestPedDistance Distance of closest entity
function ESX.Game.GetClosestPed(coords, modelFilter)
  return ESX.Game.GetClosestEntity(ESX.Game.GetPeds(true), false, coords, modelFilter)
end

--<h3>(Clientside Only)</h3>
--Gets the closest player client id, and distance to the player.
---@param coords? Coordinate Coords to search at. (Default: Player position)
---@return number closestPlayer Closest Player's source
---@return number closestPlayerDistance Closest- Player's distance
function ESX.Game.GetClosestPlayer(coords)
  return ESX.Game.GetClosestEntity(ESX.Game.GetPlayers(ture, true), true, coords, nil)
end

--<h3>(Clientside Only)</h3>
--Gets the closest vehicle.
---@param coords? Coordinate Coords to search at. (Default: Player position)
---@param modelFilter? table Enables whitelist mode for getting closest vehicle. The table must be key-value where the key is the model hash, and value set to true.
---@return number closestVehicle Closest Vehicle
---@return number closestVehicleDistance Closest Vehicle distance
function ESX.Game.GetClosestVehicle(coords, modelFilter)
  return ESX.Game.GetClosestEntity(ESX.Game.GetVehicles(), false, coords, modelFilter)
end

--<h3>(Clientside Only)</h3>
--Gets all players within the max distance of a coord.
---@param coords? Coordinate The coords to search at. (Default: Player postion)
---@param maxDistance number The maxmimum search distance
---@return number[] playersInArea Players Ids
function ESX.Game.GetPlayersInArea(coords, maxDistance)
  return playersInArea
end

--<h3>(Clientside Only)</h3>
--Gets all vehicles within the max distance of a coord.
---@param coords? Coordinate The coords to search at. (Default: Player postion)
---@param maxDistance number The maximum search distance
---@return number[] vehiclesInArea Vehicle handles
function ESX.Game.GetVehiclesInArea(coords, maxDistance)
  return vehiclesInArea
end

--<h3>(Clientside Only)</h3>
--Returns a boolean if the spawn point coords area is clear from vehicles within the max distance.
---@param coords? Coordinate The coords to search at. (Default: Player postion)
---@param maxDistance number The maxmimum search distance
---@return boolean
function ESX.Game.IsSpawnPointClear(coords, maxDistance)
  return #ESX.Game.GetVehiclesInArea(coords, maxDistance) == 0
end

--<h3>(Clientside Only)</h3>
--Get closest Entity
---@param entities? number[]|string[]
---@param isPlayerEntities? boolean Are entities players
---@param coords? Coordinate Coords to search at. (Default: Player postion)
---@param modelFilter? table Enables whitelist mode for getting closest Entity. The table must be key-value where the key is the model hash, and value set to true.
---@return number closestEntity Handle of closest entity
---@return number closestEntityDistance Distance of closest entity
function ESX.Game.GetClosestEntity(entities, isPlayerEntities, coords, modelFilter)
  return closestEntity, closestEntityDistance
end

--<h3>(Clientside Only)</h3>
--Gets the closest vehicle in the player's direction within 5 units, utilizes ray-casts.
---@return number|nil vehicle Vehicle Handle
---@return number|nil vehicleCoords Vehicle coords
function ESX.Game.GetVehicleInDirection()
  return vehicle, vehicleCoords
end

--<h3>(Clientside Only)</h3>
--Gets an vehicle's properties.
---@param vehicle number Vehicle handle
---@return ESX_Vehicle_Properties vehicleProperties
function ESX.Game.GetVehicleProperties(vehicle)
  return vehicleProperties
end

--<h3>(Clientside Only)</h3>
--Sets various properties for an vehicle object.
---@param vehicle number
---@param props ESX_Vehicle_Properties props
function ESX.Game.SetVehicleProperties(vehicle, props) end

--<h3>(Clientside Only)</h3>
--Draws 3D text on the specified coords. Must be drawn every frame, ideally in a loop. size and font arguments are optional.
---@param coords Coordinate Coords the 3D Text should be displayed at
---@param text string Message that should be displayed
---@param size number The Size of the 3D Text
---@param font TextFont 
function ESX.Game.Utils.DrawText3D(coords, text, size, font) end

-- function ESX.ShowInventory() end

--<h3>(Clientside Only)</h3>
--Get Vehicle Type
---@param model string|number
---@return VehicleType vehicleType
function ESX.GetVehicleType(model)
  return vehicleType
end