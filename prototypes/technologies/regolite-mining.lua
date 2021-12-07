TECHNOLOGY {
    type = "technology",
    name = "regolite-mining",
    icon = "__pyfusionenergygraphics__/graphics/technology/regolite-mining.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"super-alloy"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "regolite-mine"
        },
        {
            type = "unlock-recipe",
            recipe = "crush-regolite"
        },
        {
            type = "unlock-recipe",
            recipe = "regolite-recrush"
        },
        {
            type = "unlock-recipe",
            recipe = "milling-regolite"
        },
        {
            type = "unlock-recipe",
            recipe = "regolite-calcination"
        },
        {
            type = "unlock-recipe",
            recipe = "calcinate-separation"
        }
    },
    unit = {
        count = 35,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
            {"production-science-pack", 1}
        },
        time = 75
    }
}
