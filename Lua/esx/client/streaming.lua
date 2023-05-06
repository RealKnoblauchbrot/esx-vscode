---@meta

--<h3>(Clientside Only)</h3>
ESX.Streaming = {}

--<h3>(Clientside Only)</h3>
--Requests and returns the specified model parsed, a very common usage is spawning objects, etc.
---@async
---@param modelHash string|number Model that should be requested
---@param cb function Callback that gets triggered once it's loaded
function ESX.Streaming.RequestModel(modelHash, cb) end

--<h3>(Clientside Only)</h3>
--Requests and returns the texture directory parsed. This is commonly used when loading sprites, then draw them on screen using [DrawSprite()](https://runtime.fivem.net/doc/reference.html#_0xE7FFAE5EBF23D890), an example would be drawing a speedometer.
---@async
---@param textureDict string Texture dictionjary that should be loaded
---@param cb function Callback that gets triggered once it's loaded
function ESX.Streaming.RequestStreamedTextureDict(textureDict, cb) end

--<h3>(Clientside Only)</h3>
--No Idea what this does
---@async
---@param assetName string
---@param cb function
function ESX.Streaming.RequestNamedPtfxAsset(assetName, cb) end

--<h3>(Clientside Only)</h3>
--Requests the animation parsed. Animation sets provide movement styles, commonly used with [SetPedMovementClipset()](https://runtime.fivem.net/doc/reference.html#_0xAF8A94EDE7712BEF).
---@async
---@param animSet string
---@param cb function
function ESX.Streaming.RequestAnimSet(animSet, cb) end

--<h3>(Clientside Only)</h3>
--Requests the animation directory parsed. A very common usage it to play animations using [TaskPlayAnim()](https://runtime.fivem.net/doc/reference.html#_0xEA47FE3719165B94). You can use Alex Guirre's Animations List found on [Github](https://alexguirre.github.io/animations-list).
---@async
---@param animDict string
---@param cb function
function ESX.Streaming.RequestAnimDict(animDict, cb) end

--<h3>(Clientside Only)</h3>
--Request the Weapon asset parsed
---@async
---@param weaponHash string
---@param cb function
function ESX.Streaming.RequestWeaponAsset(weaponHash, cb) end