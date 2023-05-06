---@meta

--Set a Timeout
---@param msec number Milliseconds it should wait before triggering callback
---@param cb function Callback that will be triggered once timeout ran out
---@return number timeoutId Can be used to clear the timeout before its finished
function ESX.SetTimeout(msec, cb)
  return timeoutId
end

--Clear the specified timeout
---@param timeoutId number
function ESX.ClearTimeout(timeoutId) end