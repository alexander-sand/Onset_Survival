AddEvent("OnPlayerJoin", function(player)
    local hunger_rate = 5000 --milliseconds
    local hunger_web = nil

    --Set initial player hunger value
    SetPlayerPropertyValue(player, "hunger", 100, true)
    AddPlayerChat(player, "P: "..GetPlayerPropertyValue(player, "hunger"))

    --Decrease hunger at constant rate
    CreateTimer(DecreaseHunger, hunger_rate, player)
    
    DrawText(100, 100, "Hunger")
end)

--Make players more hungery over time
function DecreaseHunger(player)
    --Put player hunger value into variable
    local hunger = GetPlayerPropertyValue(player, "hunger")

    --Decrease player hunger value
    SetPlayerPropertyValue(player, "hunger", hunger - 1, true)
    --Display hunger in chat
    AddPlayerChat(player, "P: "..GetPlayerPropertyValue(player, "hunger"))
end

print("Survival package loaded!")
