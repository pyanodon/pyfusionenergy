TECHNOLOGY {
    type = "technology",
    name = "ethanolamine",
    icon = "__pyfusionenergygraphics__/graphics/technology/ethanolamine.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bio-reactor-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "genlab-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "bacteria-1"
        },
        {
            type = "unlock-recipe",
            recipe = "methyl-acrylate"
        },
        {
            type = "unlock-recipe",
            recipe = "ethanolamine"
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
