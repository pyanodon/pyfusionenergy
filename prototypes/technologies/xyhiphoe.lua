if not mods["pyalienlife"] then
    TECHNOLOGY({
        type = "technology",
        name = "xyhiphoe",
        icon = "__pyfusionenergygraphics__/graphics/technology/water-invertebrates.png",
        icon_size = 128,
        order = "c-a",
        prerequisites = {},
        effects = {},
        unit = {
            count = 100,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
                { "chemical-science-pack",   1 }
            },
            time = 70
        }
    })
end
