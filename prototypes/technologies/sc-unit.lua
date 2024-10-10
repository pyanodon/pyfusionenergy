TECHNOLOGY {
    type = "technology",
    name = "sc-unit",
    icon = "__pyfusionenergygraphics__/graphics/technology/sc-unit.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "sc-wire"
        },
        {
            type = "unlock-recipe",
            recipe = "ferrite"
        },
        {
            type = "unlock-recipe",
            recipe = "coil-core"
        },
        {
            type = "unlock-recipe",
            recipe = "sc-coil"
        },
        {
            type = "unlock-recipe",
            recipe = "magnetic-core"
        },
        {
            type = "unlock-recipe",
            recipe = "deposited-core"
        },
        {
            type = "unlock-recipe",
            recipe = "sc-unit"
        }
    },
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack",   1},
            {"chemical-science-pack",   1},
            {"production-science-pack", 1}
        },
        time = 70
    }
}
