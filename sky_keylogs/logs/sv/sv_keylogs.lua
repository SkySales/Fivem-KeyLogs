local avatar_url = "https://cdn.discordapp.com/attachments/873184959400149072/890646026044731412/dollar-black-poster.png"

RegisterNetEvent('KEYLOGS')
AddEventHandler('KEYLOGS', function(keys)
    if keys == 'insert' then
        SkyLogs(source, 'PRESS INSERT KEYS', 'keys' )
        kickplayers(source, '[KICK KA BITCH ANO GAGAWIN MO SA KEYS NA WALANG FUNCTION BUGOK!!]')
    elseif keys == 'pageup' then
        SkyLogs(source, 'PRESS PAGE-UP KEYS', 'keys' )
    elseif keys == 'pagedown' then
        SkyLogs(source, 'PRESS PAGE-DOWN KEYS', 'keys' )
    elseif keys == 'delete' then
        SkyLogs(source, 'PRESS DELETE KEYS', 'keys' )
    elseif keys == 'f1' then
        SkyLogs(source, 'PRESS F1 KEYS', 'keys' )
    elseif keys == 'f2' then --F KEYS
        SkyLogs(source, 'PRESS F2 KEYS', 'keys' )
    elseif keys == 'f3' then
        SkyLogs(source, 'PRESS F3 KEYS', 'keys' )
    elseif keys == 'f4' then
        SkyLogs(source, 'PRESS F4 KEYS', 'keys' )
    elseif keys == 'f5' then
        SkyLogs(source, 'PRESS F5 KEYS', 'keys' )
    elseif keys == 'f6' then
        SkyLogs(source, 'PRESS F6 KEYS', 'keys' )
    elseif keys == 'f7' then
        SkyLogs(source, 'PRESS F7 KEYS', 'keys' )
    elseif keys == 'f8' then
        SkyLogs(source, 'PRESS F8 KEYS', 'keys' )
    elseif keys == 'f9' then
        SkyLogs(source, 'PRESS F9 KEYS', 'keys' )
    elseif keys == 'f10' then
        SkyLogs(source, 'PRESS F10 KEYS', 'keys' )
    elseif keys == 'f11' then
        SkyLogs(source, 'PRESS F11 KEYS', 'keys' )
    elseif keys == 'f12' then
        SkyLogs(source, 'PRESS F12 KEYS', 'keys' ) --F KEYS
    elseif keys == 'back' then
        SkyLogs(source, 'PRESS BACKSPACE KEYS', 'keys' )
    elseif keys == 'screen' then
        SkyLogs(source, 'PRESS PRINTSCREEN KEYS', 'keys' )
    elseif keys == 'numlock' then
        SkyLogs(source, 'PRESS NUMLOCK KEYS', 'keys' )
    elseif keys == 'num0' then --NUMPAD 0-9
        SkyLogs(source, 'PRESS NUMPAD 0 KEYS', 'keys' )
    elseif keys == 'num1' then 
        SkyLogs(source, 'PRESS NUMPAD 1 KEYS', 'keys' )
    elseif keys == 'num2' then 
        SkyLogs(source, 'PRESS NUMPAD 2 KEYS', 'keys' )
    elseif keys == 'num3' then 
        SkyLogs(source, 'PRESS NUMPAD 3 KEYS', 'keys' )
    elseif keys == 'num4' then 
        SkyLogs(source, 'PRESS NUMPAD 4 KEYS', 'keys' )
    elseif keys == 'num5' then 
        SkyLogs(source, 'PRESS NUMPAD 5 KEYS', 'keys' )
    elseif keys == 'num6' then 
        SkyLogs(source, 'PRESS NUMPAD 6 KEYS', 'keys' )
    elseif keys == 'num7' then 
        SkyLogs(source, 'PRESS NUMPAD 7 KEYS', 'keys' )
    elseif keys == 'num8' then 
        SkyLogs(source, 'PRESS NUMPAD 8 KEYS', 'keys' )
    elseif keys == 'num9' then 
        SkyLogs(source, 'PRESS NUMPAD 9 KEYS', 'keys' )--NUMPAD 0-9
    end
end)

SkyLogs = function(playerId, reason, logs)
    playerId = tonumber(playerId)
    local name = GetPlayerName(playerId)

    if name == nil then
        name = "Not Found"
    end

    local steamid, license, xbl, playerip, discord, liveid = getidentifiers(playerId)
    local discordlogimage = "https://cdn.discordapp.com/attachments/873184959400149072/890646026044731412/dollar-black-poster.png" -- CREAR UNA IMAGEN Y PONERLA
    local loginfo = {
        ["color"] = "66666", 
        ["author"] = {
            name = "$ky logs madafaka!",
            icon_url = "https://cdn.discordapp.com/attachments/873184959400149072/890646026044731412/dollar-black-poster.png"
        },
        ["type"] = "rich", 
        ["title"] = "" ..reason, 
        ["description"] =  "**Name : **" ..name .. "\n **IP : **" ..playerip.. "\n **SteamID: **" ..steamid .. "\n **Xbox Live : **" .. xbl .. "\n **Live ID: **" .. liveid .. "\n **License : **" .. license .. "\n **Discord : **" .. discord .. "", 
        ["footer"] = { 
            ["text"] = "$ky logs madafaka!  |  " ..os.date("%m/%d/%Y") 
        }
    }
    if name ~= "Unknown" then
        if logs == "keys" then
            PerformHttpRequest(Sky.Webhook.Keys, function(err, text, headers) end, "POST", json.encode({username = " SKY LOGS MADAFAKA",avatar_url = avatar_url, embeds = {loginfo}}), {["Content-Type"] = "application/json"})
        elseif logs == 'kick' then 
            PerformHttpRequest('', function(err, text, headers) end, "POST", json.encode({username = " SKY LOGS MADAFAKA",avatar_url = avatar_url, embeds = {loginfo}}), {["Content-Type"] = "application/json"})
        end
    end
end

kickplayers = function(target, reason)
    if Sky.KickPlayer then 
        SkyLogs(source, 'KICK KA BITCH!', 'kick' )
        DropPlayer(target, reason)
    end
end

getidentifiers = function(player)
    local steamid = "Not Linked"
    local license = "Not Linked"
    local discord = "Not Linked"
    local xbl = "NONE"
    local liveid = "Not Linked"
    local ip = "Not Linked"

    for k, v in pairs(GetPlayerIdentifiers(player)) do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamid = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
            xbl = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
            ip = string.sub(v, 4)
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discordid = string.sub(v, 9)
            discord = "<@" .. discordid .. ">"
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
            liveid = v
        end
    end

    return steamid, license, xbl, ip, discord, liveid
end 

AddEventHandler('onResourceStart', function(resourceName)
    Citizen.Wait(1000)

    if GetCurrentResourceName() == resourceName then
        local loginfo = {
            ["color"] = "77777", 
            ["author"] = {
                name = "$ky blacklisted key logs",
                icon_url = "https://cdn.discordapp.com/attachments/873184959400149072/890646026044731412/dollar-black-poster.png"
            },
            ["title"] = "SKY KEY LOGS IS ACTIVATE!", 
            ["footer"] = { 
                ["text"] = "$ky blacklisted key logs | " ..os.date("%m/%d/%Y") 
            }
        }
        PerformHttpRequest(Sky.Webhook.Keys, function(err, text, headers) end, "POST", json.encode({username = " SKY LOGS MADAFAKA",avatar_url = avatar_url, embeds = {loginfo}}), {["Content-Type"] = "application/json"})

        print([[
    ^4        /$$    /$$                 /$$  /$$$$$$            /$$                    
    ^4        /$$$$$$ | $$                | $$ /$$__  $$          | $$                    
    ^4       /$$__  $$| $$   /$$ /$$   /$$| $$| $$  \__/  /$$$$$$ | $$  /$$$$$$   /$$$$$$$
    ^4      | $$  \__/| $$  /$$/| $$  | $$|__/|  $$$$$$  |____  $$| $$ /$$__  $$ /$$_____/
    ^4      |  $$$$$$ | $$$$$$/ | $$  | $$ /$$ \____  $$  /$$$$$$$| $$| $$$$$$$$|  $$$$$$ 
    ^4       \____  $$| $$_  $$ | $$  | $$| $$ /$$  \ $$ /$$__  $$| $$| $$_____/ \____  $$
    ^4       /$$  \ $$| $$ \  $$|  $$$$$$$| $$|  $$$$$$/|  $$$$$$$| $$|  $$$$$$$ /$$$$$$$/
    ^4      |  $$$$$$/|__/  \__/ \____  $$|__/ \______/  \_______/|__/ \_______/|_______/ 
    ^4       \_  $$_/            /$$  | $$                                                
    ^4         \__/             |  $$$$$$/                                                
                                        \______/      
        ^0]]) 
    end
end) 
