local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('carbomb', function(source, item)
	local Player = QBCore.Functions.GetPlayer(source)
	if not Player.Functions.GetItemByName(item.name) then return end
    -- Check if the player has not planted another bomb and has the remote

	TriggerClientEvent('RNG_CarBomb:CheckIfRequirementsAreMet', source)
end)


RegisterServerEvent('RNG_CarBomb:RemoveBombFromInv')
AddEventHandler('RNG_CarBomb:RemoveBombFromInv', function()
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem('carbomb', 1)
    if Config.DetonationType == 2 then
        Player.Functions.AddItem(Config.remote.item, 1)
    end
end)

if Config.DetonationType == 2 then
    QBCore.Functions.CreateUseableItem(Config.remote.item, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player.Functions.GetItemByName(item.name) then return end
        
        TriggerClientEvent('RNG_CarBomb:DetonateFromRemote', source)
    end)

    RegisterServerEvent('RNG_CarBomb:RemoveRemoteFromInv')
    AddEventHandler('RNG_CarBomb:RemoveRemoteFromInv', function()
        local Player = QBCore.Functions.GetPlayer(source)
        Player.Functions.RemoveItem(Config.remote.item, 1)
    end)
end