if bobmods and bobmods.lib then
    require("prototypes.updates.bob-updates")
    require("prototypes.updates.bob-additions")
end

if angelsmods then
    require("prototypes.updates.angel-updates")
end

data.raw.tool["production-science-pack"].icon = "__pyfusionenergy__/graphics/icons/production-science-pack.png"
