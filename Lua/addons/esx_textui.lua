---@meta

---@alias ESX_TextUI_Types "error" | "success" | "info"

--<h3>(Clientside Only)</h3>
---Show TextUI
---@param message string
---@param type ESX_TextUI_Types
function ESX.TextUI(message, type) end

--<h3>(Clientside Only)</h3>
--Hide TextUI
function ESX.HideUI() end

exports["esx_textui"] = {
  --<h3>(Clientside Only)</h3>
  ---Show TextUI
  ---@param message string
  ---@param type ESX_TextUI_Types
  TextUI = function(_, message, type) end,

  --<h3>(Clientside Only)</h3>
  --Hide TextUI
  HideUI = function () end
}