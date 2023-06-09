---@meta

---@alias ESX_Locales
---| "br" Brazilian
---| "cs" Czechoslovakia
---| "da" Danish
---| "de" German
---| "en" English
---| "es" Spanish
---| "fi" Finish
---| "fr" French
---| "hu" Hungarian
---| "it" Italian
---| "nl" Dutch
---| "pl" Polish
---| "sc" Simple Chinese
---| "sv" Swedish
---| "tc" Traditional Chinese

---@class Coordinate
---@field x number
---@field y number
---@field z number
---@field heading number

---@class ESX_Config
---@field Locale ESX_Locales
---@field Accounts table<string, {label: string, round: boolean}>
---@field StartingAccountMoney table<string, number>
---@field DefaultSpawn Coordinate
---@field EnablePaycheck boolean Enable Paycheck
---@field EnableSocietyPayouts boolean Pay from the society account that the player is employed at? Requirement: esx_society
---@field MaxWeight number The max inventory weight without backpack
---@field PaycheckInterval number hpw often to recieve pay checks in milliseconds
---@field EnableDebug boolean Use Debug options?
---@field EnableDefaultInventory boolean Display the default Inventory ( F2 )
---@field EnableWantedLevel boolean Use Normal GTA wanted Level?
---@field EnablePVP boolean Allow Player to combat
---@field Multichar boolean Is esx_multichar installed
---@field Identity boolean Select a characters identity data before they have loaded in (this happens by default with multichar)
---@field DistanceGive number Max distance when giving items, weapons etc.
---@field DistanceHealthRegeneration boolean Player will no longer regenerate health
---@field DistanceVehicleRewards boolean Disables Player Recieving weapons from vehicles
---@field DisableNPCDrops boolean stops NPCs from dropping weapons on death
---@field DisableDispatchServices boolean Disable Dispatch services
---@field DisableScenarios boolean Disable Scenarios
---@field DisableWeaponWheel boolean Disables default weapon wheel
---@field DisableAimAssist boolean disables Aim assist (mainly on controllers)
---@field DisableVehicleSeatShuff boolean Disables vehicle seat shuff
---@field RemoveHudComponents table
---@field SpawnVehMaxUpgrades boolean admin vehicles spawn with max vehicle settings
-- Pattern string format
--1 will lead to a random number from 0-9.
--A will lead to a random letter from A-Z.
-- . will lead to a random letter or number, with 50% probability of being either.
--^1 will lead to a literal 1 being emitted.
--^A will lead to a literal A being emitted.
--Any other character will lead to said character being emitted.
-- A string shorter than 8 characters will be padded on the right.
---@field CustomAIPlates string
---@field DefaultWeaponTints table
---@field Weapons ESX_Weapon[]

---@class ESX_PlayerData
---All Accounts of player.
--
---Default Accounts:
---- "bank", 
---- "money", 
---- "black_money"
---@field accounts table<string, ESX_Account> The accounts of the player
---@field coords Coordinate The last known position of the Player
---@field group string The current permission group of the player
---@field identifier string The players Rockstar Identifier(has char index with multichar in the front, example: char1:[identifier])
---@field inventory ESX_Item[] The players inventory
---@field job ESX_Job The players job and grade
---@field loadout ESX_Weapon[] The current weapons of the player
---@field name string Returns the name of the FiveM name or consists out of the "firstname lastname" when ESX identity installed.
---@field playerId number The playerId/source of a player
---@field source number The playerId/source of a player
---@field variables table
---@field weight number Current player weight
---@field maxWeight number The max weight a player can handle
---@field metadata table Saved metadata
---@field license string Player license
---@field ped number Player's Ped Handle

---ESX Account
---@class ESX_Account
---@field name string
---@field money number
---@field label string
---@field round boolean
---@field index number

---ESX Job
---@class ESX_Job
---@field id number Job identifier id
---@field name string Job name
---@field label string Job label
---@field grade number Job grade
---@field grade_name string Grade name
---@field grade_label string Grade label
---@field grade_salary number Grade salary
---@field skin_male table Male skin
---@field skin_female table Female skin

---ESX Item
---@class ESX_Item
---@field name string Item name
---@field count number Item count
---@field label string Item label
---@field weight number Item weight (Only available with ox_inventory)
---@field usable boolean Whether or not the item is usable (Only available with ox_inventory)
---@field rare boolean Whether or not the item is rare (Only available with ox_inventory)
---@field canRemove boolean Whether or not the item can be thrown away (Only available with ox_inventory)
---@field slot number (Only available with ox_inventory)
---@field metadata table (Only available with ox_inventory)

---ESX Weapon
---@class ESX_Weapon
---@field name string Weapon name
---@field ammo number Weapon ammo
---@field label string Weapon label
---@field components ESX_Weapon_Components[] Weapon component(s)
---@field tintIndex weapon_tints Weapon tint
---

---ESX Weapon Components
---@class ESX_Weapon_Components
---@field name string
---@field label string
---@field hash string

---Weapon tints
---@alias weapon_tints number
---| 0 Default/Black ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/8/80/Wtint_0.jpg/200px-Wtint_0.jpg)<br>**Only MK2 Weapons**<br> Class Black ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/b/b3/Mk2_wtint_0.jpg/200px-Mk2_wtint_0.jpg)
---| 1 Green ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/9/94/Wtint_1.jpg/200px-Wtint_1.jpg)<br>**Only MK2 Weapons**<br> Class Gray ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/a/a2/Mk2_wtint_1.jpg/200px-Mk2_wtint_1.jpg)
---| 2 Gold ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/e/e8/Wtint_2.jpg/200px-Wtint_2.jpg)<br>**Only MK2 Weapons**<br> Classic Two-Tone ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/3/3a/Mk2_wtint_2.jpg/200px-Mk2_wtint_2.jpg)
---| 3 Pink ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/f/ff/Wtint_3.jpg/200px-Wtint_3.jpg)<br>**Only MK2 Weapons**<br> Classic White ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/4/4e/Mk2_wtint_3.jpg/200px-Mk2_wtint_3.jpg)
---| 4 Army ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/5/5b/Wtint_4.jpg/200px-Wtint_4.jpg)<br>**Only MK2 Weapons**<br> Classic Beige ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/4/4c/Mk2_wtint_4.jpg/200px-Mk2_wtint_4.jpg)
---| 5 LSPD ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/d/d3/Wtint_5.jpg/200px-Wtint_5.jpg)<br>**Only MK2 Weapons**<br> Classic Green ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/0/05/Mk2_wtint_5.jpg/200px-Mk2_wtint_5.jpg)
---| 6 Orange ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/3/33/Wtint_6.jpg/200px-Wtint_6.jpg)<br>**Only MK2 Weapons**<br> Classic Blue ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/a/a2/Mk2_wtint_6.jpg/200px-Mk2_wtint_6.jpg)
---| 7 Platinum ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/1/1b/Wtint_7.jpg/200px-Wtint_7.jpg)<br>**Only MK2 Weapons**<br> Classic Earth ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/4/4c/Mk2_wtint_7.jpg/200px-Mk2_wtint_7.jpg)
---| 8 **Only MK2 Weapons**<br> Classic Brown & Black ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/e/e8/Mk2_wtint_8.jpg/200px-Mk2_wtint_8.jpg)
---| 9 **Only MK2 Weapons**<br> Red Contrast ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/6/6f/Mk2_wtint_9.jpg/200px-Mk2_wtint_9.jpg)
---| 10 **Only MK2 Weapons**<br> Blue Contrast ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/9/95/Mk2_wtint_10.jpg/200px-Mk2_wtint_10.jpg)
---| 11 **Only MK2 Weapons**<br> Yellow Contrast ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/c/c3/Mk2_wtint_11.jpg/200px-Mk2_wtint_11.jpg)
---| 12 **Only MK2 Weapons**<br> Orange Contrast ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/1/15/Mk2_wtint_12.jpg/200px-Mk2_wtint_12.jpg)
---| 13 **Only MK2 Weapons**<br> Bold Pink ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/e/eb/Mk2_wtint_13.jpg/200px-Mk2_wtint_13.jpg)
---| 14 **Only MK2 Weapons**<br> Bold Purple & Yellow ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/2/28/Mk2_wtint_14.jpg/200px-Mk2_wtint_14.jpg)
---| 15 **Only MK2 Weapons**<br> Bold Orange ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/3/3d/Mk2_wtint_15.jpg/200px-Mk2_wtint_15.jpg)
---| 16 **Only MK2 Weapons**<br> Bold Green & Purple ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/5/5f/Mk2_wtint_16.jpg/200px-Mk2_wtint_16.jpg)
---| 17 **Only MK2 Weapons**<br> Bold Red Features ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/c/c3/Mk2_wtint_17.jpg/200px-Mk2_wtint_17.jpg)
---| 18 **Only MK2 Weapons**<br> Bold Green Features ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/d/db/Mk2_wtint_18.jpg/200px-Mk2_wtint_18.jpg)
---| 19 **Only MK2 Weapons**<br> Bold Cyan Features ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/2/22/Mk2_wtint_19.jpg/200px-Mk2_wtint_19.jpg)
---| 20 **Only MK2 Weapons**<br> Bold Yellow Features ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/b/bf/Mk2_wtint_20.jpg/200px-Mk2_wtint_20.jpg)
---| 21 **Only MK2 Weapons**<br> Bold Red & White ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/6/64/Mk2_wtint_21.jpg/200px-Mk2_wtint_21.jpg)
---| 22 **Only MK2 Weapons**<br> Bold Blue & White ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/c/c3/Mk2_wtint_22.jpg/200px-Mk2_wtint_22.jpg)
---| 23 **Only MK2 Weapons**<br> Metallic Gold ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/1/1d/Mk2_wtint_23.jpg/200px-Mk2_wtint_23.jpg)
---| 24 **Only MK2 Weapons**<br> Metallic Platinum ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/a/ae/Mk2_wtint_24.jpg/200px-Mk2_wtint_24.jpg)
---| 25 **Only MK2 Weapons**<br> Metallic Gray & Lilac ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/4/46/Mk2_wtint_25.jpg/200px-Mk2_wtint_25.jpg)
---| 26 **Only MK2 Weapons**<br> Metallic Purple & Lime ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/7/7d/Mk2_wtint_26.jpg/200px-Mk2_wtint_26.jpg)
---| 27 **Only MK2 Weapons**<br> Metallic Red ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/4/4b/Mk2_wtint_27.jpg/200px-Mk2_wtint_27.jpg)
---| 28 **Only MK2 Weapons**<br> Metallic Green ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/f/f7/Mk2_wtint_28.jpg/200px-Mk2_wtint_28.jpg)
---| 29 **Only MK2 Weapons**<br> Metallic Blue ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/6/69/Mk2_wtint_29.jpg/200px-Mk2_wtint_29.jpg)
---| 30 **Only MK2 Weapons**<br> Metallic White & Aqua ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/3/34/Mk2_wtint_30.jpg/200px-Mk2_wtint_30.jpg)
---| 31 **Only MK2 Weapons**<br> Metallic Red & Yellow ![Image of the color getting Shown](https://wiki.rage.mp/images/thumb/2/2a/Mk2_wtint_31.jpg/200px-Mk2_wtint_31.jpg)

exports["es_extended"] = {

  --Get ESX Object
  ---@return ESX
  getSharedObject = function()
    return ESX
  end
}