--<h3>(Clientside Only)</h3>
--Show progressbar with specified message
---@param message string Message that should be displayed 
---@param length? number The time the progressbar should take in milliseconds
---@param Options? ESX_ProgressbarOptions
function ESX.Progressbar(message, length, Options) end

exports["esx_progressbar"] = {
  --<h3>(Clientside Only)</h3>
  --Show progressbar with specified message
  ---@param message string Message that should be displayed 
  ---@param length? number The time the progressbar should take in milliseconds
  ---@param Options? ESX_ProgressbarOptions
  Progressbar = function(__, message, length, Options) end
}