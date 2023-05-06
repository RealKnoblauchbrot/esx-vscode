---@meta

--<h3>(Clientside Only)</h3>
--This function triggers a server callback. See [ESX.RegisterServerCallback](https://documentation.esx-framework.org/legacy/server/functions/registerservercallback) on registering server callbacks.
---@async
---@param eventName string A valid server callback name
---@param callback function The returned function when the async task has completed. The invoked function a varied size of arguments depending on how many arguments are parsed from the server
---@param ...? any Any arguments to parse to the async function
function ESX.TriggerServerCallback(eventName, callback, ...) end

--<h3>(Clientside Only)</h3>
--Register a Client Callback
---@param eventName string
---@param callback function
function ESX.RegisterClientCallback(eventName, callback) end