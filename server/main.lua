-- server/main.lua
local VorpCore = {}

TriggerEvent("getCore",function(core)
    VorpCore = core
end)

VORP = exports.vorp_inventory:vorp_inventoryApi()

local activeMissions = {}

-- Function to spawn the mission item at a given location
function SpawnMissionItem(missionId)
    local missionData = Config.ItemRetrieval[missionId]
    -- In a real scenario, you would spawn an item or a marker at missionData.location.
    -- For this example, we'll simplify and assume the player can "collect" by being at the location.
    print("Item spawned for mission: " .. missionData.label)
    activeMissions[missionId] = missionData
end

-- Command to start the item retrieval mission
RegisterCommand("startItemRetrieval", function(source, args, rawCommand)
    local missionId = tonumber(args[1])
    if missionId and Config.ItemRetrieval[missionId] then
        SpawnMissionItem(missionId)
        TriggerClientEvent("vorp:TipBottom", source, "Mission started: " .. Config.ItemRetrieval[missionId].label, 4000)
    else
        print("Invalid mission ID.")
    end
end, true)

-- Command for testing item collection (in lieu of an actual collection mechanic)
RegisterCommand("collectItem", function(source, args, rawCommand)
    local player = source
    local missionId = tonumber(args[1])
    if activeMissions[missionId] then
        -- Add the item to the player's inventory using VORP's inventory system
        VORP.addItem(player, activeMissions[missionId].item, 1)
        TriggerClientEvent("vorp:TipBottom", player, "You collected: " .. activeMissions[missionId].item, 4000)
        -- Further logic to mark mission as completed or give rewards can be added here
        activeMissions[missionId] = nil
    end
end, false)
