---@meta

---@class Garage
---@field EntryPoint Coordinate
---@field SpawnPoint Coordinate
---@field Sprite number
---@field Scale number
---@field Colour number
---@field ImpoundedName string
---@package

---@class Impound
---@field GetOutPoint Coordinate
---@field SpawnPoint Coordinate
---@field Sprite number
---@field Scale number
---@field Colour number
---@field Cost number
---@package

exports["esx_garage"] = {

  ---Get all Garages
  ---@return table<string, Garage>
  getGarages = function ()
    return garages
  end,

  ---Get all Impounds
  ---@return table<string, Impound>
  getImpounds = function ()
    return impounds
  end
}