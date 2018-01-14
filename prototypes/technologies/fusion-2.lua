Technology {
    type = "technology",
    name = "fusion-mk02",
    icon = "__pyfusionenergy__/graphics/technology/fusion-2.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fusion-mk01"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "dt-fusion"
        },
        {
            type = "unlock-recipe",
            recipe = "reinforced-wall-shield"
        },
        {
            type = "unlock-recipe",
            recipe = "steam-exchange2"
        }
    },
    unit = {
        count = 120,
        ingredients = {
            {"science-pack-1", 3},
            {"science-pack-2", 2},
            {"science-pack-3", 1},
            {"production-science-pack", 1}
        },
        time = 70
    }
}
