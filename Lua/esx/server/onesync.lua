---@meta

--<h3>(Serverside Only)</h3>
---@class ESX.OneSync
ESX.OneSync = {}

--<h3>(Serverside Only)</h3>
--Get All Players in radius
---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number radius
---@param ignore? table playerIds to ignore, where the key is playerId and value is true
---@return table players Players inside the specified radius
function ESX.OneSync.GetPlayersInArea(source, maxDistance, ignore)
  return players
end

--<h3>(Serverside Only)</h3>
--Get Closest Player in Radius
---@param source vector3|number playerId or vector3 coordinates
---@param maxDistance number radius
---@param ignore? table playerIds to ignore, where the key is playerId and value is true
---@return unknown
function ESX.OneSync.GetClosestPlayer(source, maxDistance, ignore)
  return closestPlayer 
end

--<h3>(Serverside Only)</h3>
--An Async function that Creates Server-Sided Vehicles, this allows them to be persistant and owned by the server, rather than Client
---@param model number|string You can either specify a model, for example blista, or a vehicle hash.
---@param coords vector3|table The coords where the vehicle should be spawned. You can also parse an vector type without any issues
---@param heading number The heading to spawn the vehicle at
---@param properties table (optional) Sets the properties that the vehicle spawns with, uses the same structure as ESX.Game.SetVehicleProperties
---@param cb function (optional) 	The returned function when the vehicle has been spawned. The invoked function has 1 argument which is the NetId of the vehicle
function ESX.OneSync.SpawnVehicle(model, coords, heading, properties, cb) end

--<h3>(Serverside Only)</h3>
--An Async function that Creates Server-Sided Objects.
--Note: CreateObject Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
---@param model number|string Model of the Object - can either be a String or a hash
---@param coords vector3|table The coords where the Object should be spawned.
---@param heading number The Heading the object Will be facing
---@param cb function (optional) The returned function when the vehicle has been spawned. The invoked function has 1 argument which is the Entity Handle.
function ESX.OneSync.SpawnObject(model, coords, heading, cb) end

--<h3>(Serverside Only)</h3>
--An Async function that Creates Server-Sided Peds.
--Note: CreatePed Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
--Warning: In Some ESX versions, cb may not be called!
---@param model number|string Model of the Ped - can either be a String or a hash
---@param coords vector3|table The coords where the ped should be spawned.
---@param heading number The Heading the Ped Will be facing
---@param cb function The returned function when the vehicle has been spawned. The invoked function has 1 argument which is the Ped Entity Handle.
function ESX.OneSync.SpawnPed(model, coords, heading, cb) end

--<h3>(Serverside Only)</h3>
--An Async function that Creates a Server-Sided Ped and then Places them into a specifc vehicle.
--Note: CreatePedInsideVehicle Is a RPC (Remote Procedure Call) Native, which means it requires there to be a valid client nearby for it to be able to spawn!
--Warning: In Some ESX versions, cb may not be called!
---@param model number|string
---@param vehicle number entityId
---@param seat number
---@param cb function
function ESX.OneSync.SpawnPedInVehicle(model, vehicle, seat, cb) end

--<h3>(Serverside Only)</h3>
--Get all peds in radius
---@param coords vector3
---@param maxDistance number radius
---@param modelFilter table models to ignore, where the key is the model hash and the value is true
---@return table nearbyPeds
function ESX.OneSync.GetPedsInArea(coords, maxDistance, modelFilter) 
  return nearbyPeds
end

--<h3>(Serverside Only)</h3>
--Get all objects in radius
---@param coords vector3
---@param maxDistance number radius
---@param modelFilter table models to ignore, where the key is the model hash and the value is true
---@return table nearbyObjects
function ESX.OneSync.GetObjectsInArea(coords, maxDistance, modelFilter)
  return nearbyObjects
end

--<h3>(Serverside Only)</h3>
--Get all vehicles in radius
---@param coords vector3
---@param maxDistance number radius 
---@param modelFilter table models to ignore, where the key is the model hash and the value is true
---@return table nearbyVehicles
function ESX.OneSync.GetVehiclesInArea(coords, maxDistance, modelFilter)
	return nearbyVehicles
end

--<h3>(Serverside Only)</h3>
--Get closest ped
---@param coords vector3
---@param modelFilter table models to ignore, where the key is the model hash and the value is true
---@return number entityId, number distance, vector3 pedCoords
function ESX.OneSync.GetClosestPed(coords, modelFilter)
  return entityId, distance, pedCoords
end

--<h3>(Serverside Only)</h3>
--Get closest vehicle
---@param coords vector3
---@param modelFilter table models to ignore, where the key is the model hash and the value is true
---@return number entityId, number distance, vector3 vehicleCoords
function ESX.OneSync.GetClosestVehicle(coords, modelFilter)
	return entityId, distance, vehicleCoords
end