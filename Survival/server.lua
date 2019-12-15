function OnPlayerJoin(player)
    SetPlayerPropertyValue(player, "testValue", player + 1, true)
end