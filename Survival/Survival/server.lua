AddEvent("OnPlayerJoin", function(player)
    SetPlayerPropertyValue(player, "testValue", player + 1, true)
    AddPlayerChat(player, "P: "..GetPlayerPropertyValue(player, "testValue"))
    print("testValue")
end)

print("Survival package loaded!")