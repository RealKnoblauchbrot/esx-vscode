---@meta

--<h3>(Clientside Only)</h3>
ESX.Scaleform = {}

--<h3>(Clientside Only)</h3>
ESX.Scaleform.Utils = {}

--<h3>(Clientside Only)</h3>
--Displays a freemode message for the player.
---@param title string Title text
---@param msg string Message text
---@param sec number Time in seconds to show scaleform
function ESX.Scaleform.ShowFreemodeMessage(title, msg, sec) end

--<h3>(Clientside Only)</h3>
--Shows the 'Breaking News' scaleform used multiple times in the campaign.
---@param title string Title text
---@param msg string Message text, supports HTML syntax
---@param bottom string Footer text, supports HTML syntax
---@param sec number Time in seconds to show scaleform
function ESX.Scaleform.ShowBreakingNews(title, msg, bottom, sec) end

--<h3>(Clientside Only)</h3>
--Shows a basic popup warning, like the quit confirmation warning.
---@param title string Title text
---@param msg string Message text
---@param bottom string Footer text
---@param sec number Time in seconds to show scaleform
function ESX.Scaleform.ShowPopupWarning(title, msg, bottom, sec) end

--<h3>(Clientside Only)</h3>
--Starts the traffic scaleform movie used in campaign.
---@param sec number Time in seconds to show scaleform
function ESX.Scaleform.ShowTrafficMovie(sec) end

--<h3>(Clientside Only)</h3>
--Requests and returns a scaleform handle for the movie parsed.
---@param movie ScaleformMovies
---@return number
function ESX.Scaleform.Utils.RequestScaleformMovie(movie)
  return scaleform
end