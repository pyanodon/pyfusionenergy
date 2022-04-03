TECHNOLOGY {
    type = "technology",
    name = "advanced-mining-facilities",
    icon = "__pyfusionenergygraphics__/graphics/technology/advanced-mining-facilities.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"uranium-processing", "electric-engine", "excavation-1", "logistics-2"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "thickener-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "hydrocyclone-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "industrial-solvent"
        },
        {
            type = "unlock-recipe",
            recipe = "soda-ash"
        },
        {
            type = "unlock-recipe",
            recipe = "automated-screener-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "nmf-mk01"
        },
    },
    unit = {
        count = 50,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 1}
        },
        time = 70
    }
}
