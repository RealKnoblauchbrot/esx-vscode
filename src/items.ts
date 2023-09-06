export const completionItems:{[key: string]: any} = {
    EVENT: {
        SHARED: {
            "esx:onPlayerDeath": ["data"],
            "esx:onPlayerSpawn": ["spawn"],
            "playerSpawned": ["spawn"]
        },
        SERVER: {
            "cron:runAt": ["hour", "minute", "cb"],
            "esx_policejob:handcuff": ["target"],
            "esx_policejob:drag": ["target"],
            "esx_policejob:putInVehicle": ["target"],
            "esx_policejob:OutVehicle": ["target"],
            "esx_policejob:getStockItem": ["itemName", "count"],
            "esx_policejob:putStockItems": ["itemName", "count"],
            "esx_policejob:spawned": [],
            "esx_policejob:forceBlip": [],

            "txAdmin:events:sheduledRestart": ["eventData"],
            "txAdmin:events:playerKicked": ["target", "author", "reason"],
            "txAdmin:events:playerWarned": ["target", "author", "reason", "actionId"],
            "txAdmin:events:playerBanned": ["author", "reason", "actionId", "expiration", "durationInput", "durationTranslated", "targetNetId", "targetIds", "targetIds", "targetHwids", "targetName", "kickMessage"],
            "txAdmin:events:configChanged": [],
            "txAdmin:events:healedPlayer": ["id"],
            "txAdmin:events:announcement": ["author", "message"],
            "txAdmin:events:serverShuttingDown": ["delay", "author", "message"],
            "txAdmin:events:playerDirectMessage": ["target", "author", "message"],
            "txAdmin:events:actionRevoked": ["actionId", "actionType", "actionReason", "actionAuthor", "playerName", "playerIds", "playerHwids", "revokedBy"],
            "txAdmin:events:skippedNextScheduledRestart": ["secondsRemaining", "tempory"],
            "txAdmin:events:whitelistPlayer": ["action", "license", "playerName", "adminName"],
            "txAdmin:events:whitelistPreApproval": ["action", "identifier", "playerName?", "adminName"],
            "txAdmin:events:whitelistRequest": ["action", "playerName?", "requestId?", "license?", "adminName?"],
            "txAdmin:events:adminAuth": ["netid", "isAdmin", "username?"],

            "esx_society:registerSociety": ["registerSociety"],
            "esx_society:getSocieties": ["cb"],
            "esx_society:getSociety": ["name", "cb"],
            "esx_society:checkSocietyBalance": ["society"],
            "esx_society:withdrawMoney": ["societyName", "amount"],
            "esx_society:depositMoney": ["societyName", "amount"],
            "esx_society:washMoney": ["society", "amount"],
            "esx_society:putVehicleInGarage": ["societyName", "vehicle"],
            "esx_society:removeVehicleFromGarage": ["societyName", "vehicle"],

            "esx:clientLog": ["msg"],
            "esx:playerLoaded": ["playerId", "xPlayer"],

            "esx_addonaccount:getAccount": ["name", "owner", "cb"],
            "esx_addonaccount:getSharedAccount": ["name", "cb"],
            "esx_addonaccount:refreshAccounts": [""],

            "esx_addoninventory:getInventory": ["name", "owner", "cb"],
            "esx_addoninventory:getSharedInventory": ["name", "cb"],

            "esx_license:addLicense": ["target", "licenseType", "cb"],
            "esx_license:removeLicense": ["target", "licenseType", "cb"],
            "esx_license:getLicense": ["licenseType", "cb"],
            "esx_license:getLicenses": ["target", "cb"],
            "esx_license:checkLicense": ["target", "licenseType", "cb"],
            "esx_license:getLicensesList": ["cb"],

            "esx_garage:updateOwnedVehicle": ["stored", "parking", "Impound", "data", "spawn"],
            "esx_garage:setImpound": ["Impound", "vehicleProps"],
            "esx_garage:payPound": ["amount"],

        },
        CLIENT: {
            "pma-voice:setTalkingMode": ["mode"],
            "pma-voice:radioActive": ["radioTalking"],
            "pma-voice:settingsCallback": ["cb(voiceSettings)"],

            "esx:playerLoaded": ["xPlayer", "isNew", "skin"],

            "esx_ambulancejob:heal": [],
            "esx_ambulancejob:PlayerDead": ["Player"],
            "esx_ambulancejob:PlayerNotDead": ["Player"],
            "esx_ambulancejob:setDeadPlayers": ["deadPlayers"],
            "esx_ambulancejob:PlayerDistressed": ["playerId", "playerCoords"],

            "esx:setJob": ["job"],
            "esx:enteredVehicle": ["vehicle", "plate", "seat", "displayName", "netId"],
            "esx:exitedVehicle": ["vehicle", "plate", "seat", "displayName", "netId"],
            "esx:setPlayerData": ["key", "val", "last"],
            "esx:playerJumping": [],

            "esx_banking:doingType": ["typeData"],
            "esx_banking:logTransaction": ["label", "key", "amount"],

            "esx_status:registerStatus": ["name", "default", "color", "visible", "tickCallback"]
            "esx_status:loaded": ["status"],
            "esx_status:onTick": ["data"],

            "esx_basicneeds:resetStatus": [],
            "esx_basicneeds:healPlayer": [],
            "esx_basicneeds:isEating": [],
            "esx_basicneeds:onUse": ["type", "prop_name", "anim"],
            "esx_basicneeds:onEat": ["prop_name"],
            "esx_basicneeds:onDrink": ["prop_name"],

            "ESX:TextUI": [],
            "ESX:HideUI": [],
        }
    },
    CALLBACK: {
        SERVER: {
            "esx:GetVehicleType": [],
        },
        CLIENT: {
            "esx_skin:getPlayerSkin": [],

            "esx_society:getSocietyMoney": ["societyName"],
            "esx_society:getEmployees": ["society"],
            "esx_society:getJob": ["society"],
            "esx_society:setJob": ["identifier", "job", "grade", "actionType"],
            "esx_society:setJobSalary": ["job", "grade", "salary"],
            "esx_society:setJobLabel": ["job", "grade", "label"],
            "esx_society:getOnlinePlayers": [],
            "esx_society:getVehiclesInGarage": ["societyName"],
            "esx_society:isBoss": ["job"],

            "esx_taxijob:SpawnVehicle": ["model", "props"],
            "esx_taxijob:getStockItems": [],
            "esx_taxijob:getPlayerInventory": [],

            "esx_joblisting:getJobsList": [],

            "esx:Onesync:SpawnObject": ["model", "coords", "heading"],

            "esx_garage:getVehiclesInParking": ["parking"],
            "esx_garage:checkVehicleOwner": ["plate"],
            "esx_garage:getVehiclesImpounded": [],
            "esx_garage:getVehiclesInPound": ["Impound"],
            "esx_garage:checkMoney": ["amount"],

            "esx_weaponshop:buyLicense": [],
            "esx_weaponshop:buyWeapon": ["weaponName", "zone"],

            "esx_mechanicjob:getStockItems": [],
            "esx_mechanicjob:getPlayerInventory": [],

            "esx_banking:getPlayerData": [],

            "esx_vehicleshop:getSoldVehicles": [],
            "esx_vehicleshop:buyVehicle": ["model", "plate"],
            "esx_vehicleshop:getCommercialVehicles": [],
            "esx_vehicleshop:buyCarDealerVehicle": ["model"],
            "esx_vehicleshop:getRentedVehicles": [],
            "esx_vehicleshop:giveBackVehicle": ["plate"],
            "esx_vehicleshop:resellVehicle": ["plate", "model"],
            "esx_vehicleshop:getStockItems": [],
            "esx_vehicleshop:getPlayerInventory": [],
            "esx_vehicleshop:isPlateTaken": ["plate"],
            "esx_vehicleshop:retrieveJobVehicles": ["type"],

            "esx_sit:getPlace": ["objectCoords"],

            "esx_clotheshop:buyClothes": ["newSkin", "oldSkin"],
            "esx_clotheshop:checkPropertyDataStore": [],

            "esx_license:getLicense": ["licenseType"],
            "esx_license:getLicenses": ["target"],
            "esx_license:checkLicense": ["target", "licenseType"],
            "esx_license:getLicensesList": [],

            "esx_service:enableService": ["name"],
            "esx_service:isInService": ["name"],
            "esx_service:isPlayerInService": ["name", "target"],
            "esx_service:getInServiceList": ["name"],

            "esx_drugs:buyLicense": ["licenseName"],

            "esx_boat:buyBoat": ["vehicleProps"],
            "esx_boat:storeVehicle": ["plate"],
            "esx_boat:getGarage": [],
            "esx_boat:buyBoatLicense": [],

            "esx:getPlayerData": [],
            "esx:isUserAdmin": [],
            "esx:getGameBuild": [],
            "esx:getOtherPlayerData": [],
            "esx:getPlayerNames": [],
            "esx:spawnVehicle": [],

            "esx_lscustom:getVehiclesPrices": [],

            "esx_accessories:get": ["accessory"],

            "esx_billing:getBills": [],
            "esx_billing:getTargetBills": ["target"],
            "esx_billing:payBill": ["billId"],

            "esx_ambulancejob:removeItemsAfterRPDeath": [],
            "esx_ambulancejob:getItemAmount": ["item"],
            "esx_ambulancejob:getDeadPlayers": [],
            "esx_ambulancejob:getDeathStatus": [],

            "esx_policejob:getOtherPlayerData": ["target", "notify"],
            "esx_policejob:getFineList": ["category"],
            "esx_policejob:getVehicleInfos": ["plate"],
            "esx_policejob:getArmoryWeapons": [],
            "esx_policejob:addArmoryWeapon": ["weaponName", "removeWeapon"],
            "esx_policejob:removeArmoryWeapon": ["weaponName"],
            "esx_policejob:buyWeapon": ["weaponName", "type", "componentNum"],
            "esx_policejob:buyJobVehicle": ["vehicleProps", "type"],
            "esx_policejob:getStockItems": [],
            "esx_policejob:getPlayerInventory": [],

            "esx_identity:registerIdentity": [],





        }
    }

}
