---@meta

---@alias ESX_Context_Postion "left" | "center" | "right"

--<h3>(Clientside Only)</h3>
--Show contect menu and enable focus(mouse)
---@param position ESX_Context_Postion
---@param eles ESX_Context_Element[]
---@param onSelect? fun(element: ESX_Context_Element)
---@param onClose? fun(element: ESX_Context_Element)
---@param canClose? boolean
function ESX.OpenContext(position, eles, onSelect, onClose, canClose) end

--<h3>(Clientside Only)</h3>
--Show context menu but don't enable focus(mouse)
---@param position ESX_Context_Postion
---@param eles ESX_Context_Element[]
---@param onSelect? fun(element: ESX_Context_Element)
---@param onClose? fun(element: ESX_Context_Element)
---@param canClose? boolean
function ESX.PreviewContext(position, eles, onSelect, onClose, canClose) end

--<h3>(Clientside Only)</h3>
---Close Context Menu
function ESX.CloseContext() end

--<h3>(Clientside Only)</h3>
---Refresh Context Menu and optionally re-set elements and postion
---@param eles? ESX_Context_Element[]
---@param position? ESX_Context_Postion
function ESX.RefreshContext(eles, position) end

exports["esx_context"] = {
  --<h3>(Clientside Only)</h3>
  --Show contect menu and enable focus(mouse)
  ---@param position ESX_Context_Postion
  ---@param eles ESX_Context_Element[]
  ---@param onSelect? fun(element: ESX_Context_Element)
  ---@param onClose? fun(element: ESX_Context_Element)
  ---@param canClose? boolean
  Preview = function(_, position, eles, onSelect, onClose, canClose) end,

  --<h3>(Clientside Only)</h3>
  --Show contect menu and enable focus(mouse)
  ---@param position ESX_Context_Postion
  ---@param eles ESX_Context_Element[]
  ---@param onSelect? fun(element: ESX_Context_Element)
  ---@param onClose? fun(element: ESX_Context_Element)
  ---@param canClose? boolean
  Open = function(_, position, eles, onSelect, onClose, canClose) end,

  --<h3>(Clientside Only)</h3>
  ---Close Context Menu
  Close = function() end,

  --<h3>(Clientside Only)</h3>
  ---Refresh Context Menu and optionally re-set elements and postion
  ---@param eles? ESX_Context_Element[]
  ---@param position? ESX_Context_Postion
  Refresh = function(eles, position) end;

  --<h3>(Clientside Only)</h3>
  ---Focus preview
  focusPreview = function() end,
}
