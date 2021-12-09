TECHNOLOGY {
    type = "technology",
    name = "sc-unit",
    icon = "__pyfusionenergygraphics__/graphics/icons/magnetic-unit.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"vanadium-processing", "molybdenum-processing"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "gas-separator-mk01"
        },
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
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 70
    }
}
