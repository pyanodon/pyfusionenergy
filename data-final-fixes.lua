local blacklist_effectivity = {
    "deuterium-fusion",
    "dt-he3",
    "dt-fusion",
    "b-h",
    "steam-exchange1",
    "steam-exchange2",
    "steam-exchange3",
    "steam-exchange4"
}

if data.raw.module["efficiency-module"] then
    if data.raw.module["efficiency-module"].limitation_blacklist == nil then
        data.raw.module["efficiency-module"].limitation_blacklist = {}
        data.raw.module["efficiency-module-2"].limitation_blacklist = {}
        data.raw.module["efficiency-module-3"].limitation_blacklist = {}
    end

    --adding fusion recipes to effectivity modules black list
    for r, recipe in pairs(blacklist_effectivity) do
        table.insert(data.raw.module["efficiency-module"].limitation_blacklist, recipe)
        table.insert(data.raw.module["efficiency-module-2"].limitation_blacklist, recipe)
        table.insert(data.raw.module["efficiency-module-3"].limitation_blacklist, recipe)
    end
end
