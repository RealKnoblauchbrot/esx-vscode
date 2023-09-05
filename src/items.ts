export const completionItems:{[key: string]: any} = {
    EVENT: {
        SHARED: {
            "shared:thing": ["cum"]
        },
        SERVER: {
            "server:thing": ["shit"]
        },
        CLIENT: {
            "esx:playerLoaded": ["playerId", "reason"]
        }
    },
    CALLBACK: {
        SERVER: {
            "esx:GetVehicleType": [""],
        },
        CLIENT: {
            "esx_skin:getPlayerSkin": [""],

            "esx_society:getSocietyMoney": ["societyName"],
            "esx_society:getEmployees": ["society"],
            "esx_society:getJob": ["society"],
            "esx_society:setJob": ["identifier", "job", "grade", "actionType"],
            "esx_society:setJobSalary": ["job", "grade", "salary"],
            "esx_society:setJobLabel": ["job", "grade", "label"],
            "esx_society:getOnlinePlayers": [""],
            "esx_society:getVehiclesInGarage": ["societyName"],
            "esx_society:isBoss": ["job"],

            "esx_taxijob:SpawnVehicle": ["model", "props"],
            "esx_taxijob:getStockItems": [""],
            "esx_taxijob:getPlayerInventory": [""],

            "esx_joblisting:getJobsList": [""],

            "esx:Onesync:SpawnObject": ["model", "coords", "heading"],

            "esx_garage:getVehiclesInParking": ["parking"],
            "esx_garage:checkVehicleOwner": ["plate"],
            "esx_garage:getVehiclesImpounded": [""],
            "esx_garage:getVehiclesInPound": ["Impound"],
            "esx_garage:checkMoney": ["amount"],

            "esx_weaponshop:buyLicense": [""],
            "esx_weaponshop:buyWeapon": ["weaponName", "zone"],

            "esx_mechanicjob:getStockItems": [""],
            "esx_mechanicjob:getPlayerInventory": [""],

            "esx_banking:getPlayerData": [""],

            "esx_vehicleshop:getSoldVehicles": [""],
            "esx_vehicleshop:buyVehicle": ["model", "plate"],
            "esx_vehicleshop:getCommercialVehicles": [""],
            "esx_vehicleshop:buyCarDealerVehicle": ["model"],
            "esx_vehicleshop:getRentedVehicles": [""],
            "esx_vehicleshop:giveBackVehicle": ["plate"],
            "esx_vehicleshop:resellVehicle": ["plate", "model"],
            "esx_vehicleshop:getStockItems": [""],
            "esx_vehicleshop:getPlayerInventory": [""],
            "esx_vehicleshop:isPlateTaken": ["plate"],
            "esx_vehicleshop:retrieveJobVehicles": ["type"],

            "esx_sit:getPlace": ["objectCoords"],

            "esx_clotheshop:buyClothes": ["newSkin", "oldSkin"],
            "esx_clotheshop:checkPropertyDataStore": [""],

            "esx_license:getLicense": ["licenseType"],
            "esx_license:getLicenses": ["target"],
            "esx_license:checkLicense": ["target", "licenseType"],
            "esx_license:getLicensesList": [""],

            "esx_service:enableService": ["name"],
            "esx_service:isInService": ["name"],
            "esx_service:isPlayerInService": ["name", "target"],
            "esx_service:getInServiceList": ["name"],

            "esx_drugs:buyLicense": ["licenseName"],

            "esx_boat:buyBoat": ["vehicleProps"],
            "esx_boat:storeVehicle": ["plate"],
            "esx_boat:getGarage": [""],
            "esx_boat:buyBoatLicense": [""],

            "esx:getPlayerData": [""],
            "esx:isUserAdmin": [""],
            "esx:getGameBuild": [""],
            "esx:getOtherPlayerData": [""],
            "esx:getPlayerNames": [""],
            "esx:spawnVehicle": [""],

            "esx_lscustom:getVehiclesPrices": [""],

            "esx_accessories:get": ["accessory"],

            "esx_billing:getBills": [""],
            "esx_billing:getTargetBills": ["target"],
            "esx_billing:payBill": ["billId"],

            "esx_ambulancejob:removeItemsAfterRPDeath": [""],
            "esx_ambulancejob:getItemAmount": ["item"],
            "esx_ambulancejob:getDeadPlayers": [""],
            "esx_ambulancejob:getDeathStatus": [""],

            "esx_policejob:getOtherPlayerData": ["target", "notify"],
            "esx_policejob:getFineList": ["category"],
            "esx_policejob:getVehicleInfos": ["plate"],
            "esx_policejob:getArmoryWeapons": [""],
            "esx_policejob:addArmoryWeapon": ["weaponName", "removeWeapon"],
            "esx_policejob:removeArmoryWeapon": ["weaponName"],
            "esx_policejob:buyWeapon": ["weaponName", "type", "componentNum"],
            "esx_policejob:buyJobVehicle": ["vehicleProps", "type"],
            "esx_policejob:getStockItems": [""],
            "esx_policejob:getPlayerInventory": [""],

            "esx_identity:registerIdentity": [""],
        }
    }

}
