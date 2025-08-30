TECHNOLOGY({
    type = "technology",
    name = "wood-processing-3",
    icon = "__pyfusionenergygraphics__/graphics/technology/wood-processing-3.png",
    icon_size = 128,
    order = "c-a",
    --upgrade = true,
    prerequisites = { "wood-processing-2" },
    effects = {},
    unit = {
        count = 30,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 }
        },
        time = 45
    }
})
