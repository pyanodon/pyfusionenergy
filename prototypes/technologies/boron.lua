TECHNOLOGY({
    type = "technology",
    name = "boron",
    icon = "__pyfusionenergygraphics__/graphics/technology/boron-mk01.png",
    icon_size = 128,
    order = "c-a",
    --upgrade = true,
    prerequisites = { "coal-processing-1" },
    effects = {},
    unit = {
        count = 30,
        ingredients = {
            { "automation-science-pack", 1 },
        },
        time = 45
    }
})

TECHNOLOGY({
    type = "technology",
    name = "boron-mk02",
    icon = "__pyfusionenergygraphics__/graphics/technology/boron-mk02.png",
    icon_size = 128,
    order = "c-a",
    --upgrade = true,
    prerequisites = {},
    dependencies = { "boron" },
    effects = {},
    unit = {
        count = 30,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "production-science-pack", 1 }
        },
        time = 45
    }
})
