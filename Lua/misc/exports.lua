---@meta

---@class ESX_Context_Element
---@field unselectable boolean
---@field disabled boolean
---@field icon string Fontawesome Icon or "" to hide icon 
---@field title string Title of element
---@field description string Discription of the element
---@field input boolean Allow Input
---@field inputType "radio" | "number" | "text" Type of input
---@field inputPlaceholder string Placeholder to show in Input
---@field inputValue number|string Default Value
---@field inputMin number Minimum Value. Only works with type "number"
---@field inputMax number Maximum Value. Only works with type "number"
---@field name string Input identifier



exports = {
  ["es_extended"] = {

    --Get ESX Object
    ---@return ESX
    getSharedObject = function()
      return ESX
    end
  }
}
