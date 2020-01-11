TECHNOLOGY {
    type = "technology",
    name = "fusion-mk04",
    icon = "__pyfusionenergygraphics__/graphics/technology/fusion-4.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fusion-mk03"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "fusion-reactor-mk02"
        },
        {
            type = "unlock-recipe",
            recipe = "b-h"
        },
        {
            type = "unlock-recipe",
            recipe = "steam-exchange4"
        }
    },
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {"chemical-science-pack", 3},
            {"production-science-pack", 3}
        },
        time = 70
    }
}
