require("stdlib.data.data").create_data_globals()

if mods["boblibrary"] then
    require("prototypes.updates.bob-updates")
    require("prototypes.updates.bob-additions")
end

data.raw["tool"]["production-science-pack"].icon = "__pyfusionenergy__/graphics/icons/production-science-pack.png"
