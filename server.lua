-- vehicle-tuning: server tarafı
addEventHandler("onResourceStart", resourceRoot, function()
    outputDebugString("vehicle-tuning basladi")
end)

addCommandHandler("upgradecar", function(player)
    local vehicle = getPedOccupiedVehicle(player)
    if vehicle then
        addVehicleUpgrade(vehicle, 1010) -- ornek: nitro
        outputChatBox("Araciniz yukseltildi!", player)
    else
        outputChatBox("Bir araca binmelisiniz.", player)
    end
end)