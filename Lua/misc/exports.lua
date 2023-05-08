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

---@alias ESX_Context_Postion "left" | "center" | "right"

exports = {
  ["es_extended"] = {

    --Get ESX Object
    ---@return ESX
    getSharedObject = function()
      return ESX
    end
  },

  --<h3>(Clientside Only)</h3>
  ["esx_context"] = {

    --<h3>(Clientside Only)</h3>
    --Show context menu but don't enable focus(mouse)
    
    ---@param position ESX_Context_Postion
    ---@param eles ESX_Context_Element[]
    ---@param onSelect? fun(element: ESX_Context_Element)
    ---@param onClose? fun(element: ESX_Context_Element)
    ---@param canClose? boolean
    Preview = function(ignoreThis, position, eles, onSelect, onClose, canClose) end,

    --<h3>(Clientside Only)</h3>
    ---Focus preview
    
    focusPreview = function() end,

    --<h3>(Clientside Only)</h3>
    --Show contect menu and enable focus(mouse)
    
    ---@param position ESX_Context_Postion
    ---@param eles ESX_Context_Element[]
    ---@param onSelect? fun(element: ESX_Context_Element)
    ---@param onClose? fun(element: ESX_Context_Element)
    ---@param canClose? boolean
    Open = function(ignoreThis, position, eles, onSelect, onClose, canClose) end,

    --<h3>(Clientside Only)</h3>
    ---Close Context Menu
    Close = function() end,

    --<h3>(Clientside Only)</h3>
    ---Refresh Context Menu and optionally re-set elements and postion
    
    ---@param eles? ESX_Context_Element[]
    ---@param position? ESX_Context_Postion
    Refresh = function(ignoreThis, eles, position) end;
  },

  --<h3>(Clientside Only)</h3>
  ["esx_notify"] = {

    --<h3>(Clientside Only)</h3>
    --Shows a notification to the player.
    
    ---@param type ESX_NotificationTypes What type the notification would be (default: "info")
    ---@param length number For how long the notification should show (default: 3000)
    ---@param message string The message to display
    Notify = function(ignoreThis, type, length, message) end,
  },

  --<h3>(Clientside Only)</h3>
  ["esx_textui"] = {

    --<h3>(Clientside Only)</h3>
    ---Show TextUI
    
    ---@param message string
    ---@param type ESX_TextUI_Types
    TextUI = function(ignoreThis, message, type) end,

    --<h3>(Clientside Only)</h3>
    --Hide TextUI
    HideUI = function() end
  },

  --<h3>(Clientside Only)</h3>
  ["esx_progressbar"] = {

  --<h3>(Clientside Only)</h3>
  --Show progressbar with specified message
  
  ---@param message string Message that should be displayed 
  ---@param length? number The time the progressbar should take in milliseconds
  ---@param Options? ESX_ProgressbarOptions
    Progressbar = function (ignoreThis, message, length, Options) end
  }
}
