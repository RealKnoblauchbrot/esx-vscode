---@meta

---@alias ESX_NotificationTypes "sucess" | "error" | "info" | string

--<h3>(Clientside Only)</h3>
--Shows a notification to the player.
---@param type? ESX_NotificationTypes What type the notification would be (default: "info")
---@param length? number For how long the notification should show (default: 3000)
---@param message string The message to display
function ESX.ShowNotification(message, type, length) end

exports["esx_notify"] = {
  --<h3>(Clientside Only)</h3>
  --Shows a notification to the player.
  ---@param type? ESX_NotificationTypes What type the notification would be (default: "info")
  ---@param length? number For how long the notification should show (default: 3000)
  ---@param message string The message to display
  Notify = function (_, message, type, length) end,
}