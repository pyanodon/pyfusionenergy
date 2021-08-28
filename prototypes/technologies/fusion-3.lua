TECHNOLOGY {
    type = "technology",
    name = "fusion-mk03",
    icon = "__pyfusionenergygraphics__/graphics/technology/fusion-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fusion-mk02", "utility-science-pack"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "dt-he3"
        },
        {
            type = "unlock-recipe",
            recipe = "steam-exchange3"
        },
        {
            type = "unlock-recipe",
            recipe = "agzn-alloy"
        },
        {
            type = "unlock-recipe",
            recipe = "silver-foam"
        },
        {
            type = "unlock-recipe",
            recipe = "he3-separation"
        }
    },
    unit = {
        count = 70,
        ingredients = {
            {"automation-science-pack", 5},
            {"logistic-science-pack", 4},
            {"chemical-science-pack", 3},
            {"production-science-pack", 3},
            {"utility-science-pack", 2}
        },
        time = 70
    }
}
