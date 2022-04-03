TECHNOLOGY {
    type = "technology",
    name = "fluid-pressurization",
    icon = "__pycoalprocessinggraphics__/graphics/missing_icon.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"steel-processing"},
    effects = {},
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
        },
        time = 30
    }
}
