TECHNOLOGY {
    type = "technology",
    name = "wood-processing-3",
    icon = "__pyfusionenergygraphics__/graphics/technology/wood-processing-3.png",
    icon_size = 128,
    order = "c-a",
    --upgrade = true,
    prerequisites = {"xyhiphoe"},
    effects = {},
    unit = {
        count = 30,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack"}
        },
        time = 45
    }
}
