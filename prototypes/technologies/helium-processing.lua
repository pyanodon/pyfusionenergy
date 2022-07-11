TECHNOLOGY {
    type = "technology",
    name = "helium-processing",
    icon = "__pyfusionenergygraphics__/graphics/technology/helium-processing-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "compressor-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "purified-air"
        },
        {
            type = "unlock-recipe",
            recipe = "cool-air"
        },
        {
            type = "unlock-recipe",
            recipe = "cold-clean-air"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-pure-air"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-air-distilation"
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
