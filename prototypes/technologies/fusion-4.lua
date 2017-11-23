local technology = {
    type = "technology",
    name = "fusion-mk04",
    icon = "__pyfusionenergy__/graphics/technology/fusion-4.png",
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
            {"science-pack-1", 5},
            {"science-pack-2", 4},
            {"science-pack-3", 3},
            {"production-science-pack", 3}
        },
        time = 70
    }
}
data:extend {technology}
