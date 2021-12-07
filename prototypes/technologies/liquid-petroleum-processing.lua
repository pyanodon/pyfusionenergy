TECHNOLOGY {
    type = "technology",
    name = "liquid-petroleum-processing",
    icon = "__pyfusionenergygraphics__/graphics/icons/liquid-petgas.png",
    icon_size = 32,
    order = "c-a",
    prerequisites = {"production-science-pack", "fuel-production"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "compressor-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-petgas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-petgas-separation"
        },
        {
            type = "unlock-recipe",
            recipe = "gas-stream-filtration"
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
