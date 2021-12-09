TECHNOLOGY {
    type = "technology",
    name = "kmauts",
    icon = "__pyfusionenergygraphics__/graphics/technology/kmauts.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"automation-3"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "kmauts-enclosure-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "kmauts-ration"
        },
        {
            type = "unlock-recipe",
            recipe = "serine"
        }
    },
    unit = {
        count = 40,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
            {"production-science-pack", 1}
        },
        time = 75
    }
}
