local technology = {
    type = "technology",
    name = "fusion-mk03",
    icon = "__pyfusionenergy__/graphics/technology/fusion-3.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fusion-mk02"},
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
            {"science-pack-1", 5},
            {"science-pack-2", 4},
            {"science-pack-3", 3},
            {"production-science-pack", 3}
        },
        time = 70
    }
}
data:extend {technology}
