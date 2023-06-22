---@meta

---@class BoatGarage
---@field GaragePos vector3
---@field SpawnPoint vector4
---@field StorePos vector3
---@field StoreTP vector4
---@package

exports["esx_boat"] = {

  --Get all Boat Garages
  ---@return table<string, BoatGarage>[]
  getGarages = function ()
    return garages
  end,
}
