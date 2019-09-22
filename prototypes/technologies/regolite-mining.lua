TECHNOLOGY {
    type = "technology",
    name = "regolite-mining",
    icon = "__pyfusionenergy__/graphics/technology/regolite-mining.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"advanced-mining-facilities", "helium-processing"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "regolite-mine"
        },
        {
            type = "unlock-recipe",
            recipe = "compressor-mk01"
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
