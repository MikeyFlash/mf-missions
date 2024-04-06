-- config/missions.lua
Config = {}
Config.ItemRetrieval = {
    {
        id = 1,
        label = "Lost Family Heirloom",
        item = "family_heirloom",
        location = {x = -275.522, y = 804.984, z = 119.38}, -- Example coordinates
        reward = {
            money = 100,
            items = {
                {name = "gold_nugget", amount = 2}
            }
        }
    },
    -- Add more missions as needed
}
