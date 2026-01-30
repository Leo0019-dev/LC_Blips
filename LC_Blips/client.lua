local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    for _, blipData in pairs(Config.Blips) do
        local blip = AddBlipForCoord(
            blipData.coords.x,
            blipData.coords.y,
            blipData.coords.z
        )

        SetBlipSprite(blip, blipData.sprite)
        SetBlipDisplay(blip, blipData.display or 4)
        SetBlipScale(blip, blipData.scale or 0.8)
        SetBlipColour(blip, blipData.color or 0)
        SetBlipAsShortRange(blip, blipData.shortRange or false)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(blipData.label)
        EndTextCommandSetBlipName(blip)
    end
end)
