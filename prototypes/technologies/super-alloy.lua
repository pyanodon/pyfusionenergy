TECHNOLOGY {
    type = "technology",
    name = "super-alloy",
    icon = "__pyfusionenergygraphics__/graphics/technology/super-alloy.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"helium-processing", "molybdenum-processing", "vanadium-processing"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "super-alloy"
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
