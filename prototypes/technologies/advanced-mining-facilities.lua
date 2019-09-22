TECHNOLOGY {
    type = "technology",
    name = "advanced-mining-facilities",
    icon = "__pyfusionenergy__/graphics/technology/advanced-mining-facilities.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"diamond-mining"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "agitator-mk01"
        },
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
            recipe = "mixer-mk01"
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
        {
            type = "unlock-recipe",
            recipe = "nuclear-sample"
        },
        {
            type = "unlock-recipe",
            recipe = "nexelit-matrix"
        },
        {
            type = "unlock-recipe",
            recipe = "nbti-alloy"
        },
        {
            type = "unlock-recipe",
            recipe = "nenbit-matrix"
        },
        {
            type = "unlock-recipe",
            recipe = "control-unit"
        }
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
