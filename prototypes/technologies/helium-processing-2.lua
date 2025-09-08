TECHNOLOGY {
    type = "technology",
    name = "helium-processing-mk02",
    icon = "__pyfusionenergygraphics__/graphics/technology/helium-processing-mk02.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"helium-processing", "liquid-petroleum-processing", "regolite-mining"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "high-purified-gas"
        },
        {
            type = "unlock-recipe",
            recipe = "rich-gas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-rich-gas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-rich-gas-distilation"
        },
        {
            type = "unlock-recipe",
            recipe = "purier-helium"
        },
        {
            type = "unlock-recipe",
            recipe = "helium"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-helium"
        },
        {
            type = "unlock-recipe",
            recipe = "evaporate-helium"
        }
    },
    unit = {
        count = 40,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
            {"production-science-pack", 1}
        },
        time = 75
    }
}
