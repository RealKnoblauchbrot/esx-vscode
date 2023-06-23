---@meta

exports = {
  ["pma-voice"] = {
    --<h3>(Clientside Only)</h3>
    --Sets the voice property, currently the only use is to enable/disable radios and radio clicks.
    ---@param property string The property to set
    ---@param value boolean The value to set the property to
    setVoiceProperty = function (_, property, value) end,

    --<h3>(Clientside Only)</h3>
    --Sets the local players radio channel.
    ---@param radioChannel number the radio channel to join
    setRadioChannel = function (_, radioChannel) end,

    --<h3>(Clientside Only)</h3>
    --Sets the local players radio channel.
    ---@param radioChannel number the radio channel to join
    addPlayerToRadio = function (_, radioChannel) end,

    --<h3>(Clientside Only)</h3>
    --Sets the local players call channel.
    ---@param callChannel number the call channel to join
    setCallChannel = function (_, callChannel) end,

    --<h3>(Clientside Only)</h3>
    --Sets the local players call channel.
    ---@param callChannel number the call channel to join
    addPlayerToCall = function (_, callChannel) end,
    
    --<h3>(Clientside Only)</h3>
    --Sets the local players radio channel volume
    ---@param radioVolume number the radio volume to set to between 0 - 100 percent
    setRadioVolume = function (_, radioVolume) end,

    --<h3>(Clientside Only)</h3>
    --Sets the local players call channel volume
    ---@param callVolume number the call volume to set to between 0 - 100 percent
    setCallVolume = function (_, callVolume) end,

    --<h3>(Clientside Only)</h3>
    --Removes the player from the radio
    --
    --<b>NOTE: This is just syntactic sugar for setRadioChannel(0)
    removePlayerFromRadio = function () end,

    --<h3>(Clientside Only)</h3>
    --Removes the player from the call
    --
    --<b>NOTE: This is just syntactic sugar for setCallChannel(0)
    removePlayerFromCall = function () end,

    --<h3>(Clientside Only)</h3>
    --Toggles the selected player muted for the local client
    ---@param playerId number
    toggleMutePlayer = function (_, playerId) end,

    --<h3>(Clientside Only)</h3>
    --Sets the voice property, currently the only use is to enable/disable radios and radio clicks.
    ---@param property any
    ---@param value any
    SetMumbleProperty = function (_, property, value) end,

    --<h3>(Clientside Only)</h3>
    --Sets the voice property, currently the only use is to enable/disable radios and radio clicks.
    ---@param property any
    ---@param value any
    SetTokoProperty = function (_, property, value) end,

    --<h3>(Serverside Only)</h3>
    --Sets the players radio channel.
    ---@param source number The player to set the radio channel of
    ---@param radioChannel number the radio channel to set the player to
    setPlayerRadio = function (_, source, radioChannel) end,

    --<h3>(Serverside Only)</h3>
    --Sets the players call channel.
    ---@param source number The player to set the call channel of
    ---@param callChannel number the call channel to set the player to
    setPlayerCall = function (_, source, callChannel) end,

    
    --<h3>(Serverside Only)</h3>
    --Adds a channel check to radio channels.
    ---@param channel number The channel to add the check to.
    ---@param cb fun(source: number) the function to call when the check is triggered, which should return a boolean of if the player is allowed to join the channel..
    --```lua 
    -- --Example for addChannelCheck
    -- -- this always has to return true/false
    -- exports['pma-voice']:addChannelCheck(1, function(source)
    --   if IsPlayerAceAllowed(source, 'radio.police') then
    --     return true
    --   end
    --   return false
    -- end)
    --```
    addChannelCheck = function (_, channel, cb) end,

    ---Gets a list of all of the players in the specified radio channel.
    ---@param radioChannel number The channel to get all the members of
    ---@return table<number, boolean> players Table with key being the playerId and the value the talking state. 
    getPlayersInRadioChannel = function (_, radioChannel)
      return players
    end
  }
}
