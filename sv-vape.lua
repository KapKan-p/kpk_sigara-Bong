local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)




ESX.RegisterUsableItem('vape', function(source)
    TriggerClientEvent('Vape:StartVaping', source)
end)

ESX.RegisterUsableItem('bong', function(source)
	TriggerClientEvent('Bong:StartVaping', source)
	
end)


ESX.RegisterUsableItem('cigarett', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local lighter = xPlayer.getInventoryItem('lighter')
	
		if lighter.count > 0 then
			xPlayer.removeInventoryItem('cigarett', 1)
			TriggerClientEvent('Sigara:StartVaping', source)
		else
			TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Çakmağın yok', })

			
		end
end)

RegisterServerEvent("eff_smokes")
AddEventHandler("eff_smokes", function(entity)
	TriggerClientEvent("c_eff_smokes", -1, entity)
end)
