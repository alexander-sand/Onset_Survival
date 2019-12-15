--make a hunger bar first
--[[
    Add player property value called hunger
    Report value in chat
]]
AddEvent("OnPlayerStreamIn", function(player)
    AddPlayerChat(player, "P: "..GetPlayerPropertyValue(player, "testValue"))
end)
