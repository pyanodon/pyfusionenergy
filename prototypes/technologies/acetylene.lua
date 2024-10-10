TECHNOLOGY {
    type = "technology",
    name = "acetylene",
    icon = "__pyfusionenergygraphics__/graphics/technology/acetylene.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "calcium-carbide"
        },
        {
            type = "unlock-recipe",
            recipe = "acetylene"
        },
    },
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
        },
        time = 30
    }
}
