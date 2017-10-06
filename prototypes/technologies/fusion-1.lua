local technology = {
    type = "technology",
    name = "fusion-mk01",
    icon = "__pyfusionenergy__/graphics/technology/fusion-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"diamond-mining"},
    effects =
    {
		{
            type = "unlock-recipe",
            recipe = "vacuum-pump"
        },
		{
            type = "unlock-recipe",
            recipe = "vacuum"
        },
		{
            type = "unlock-recipe",
            recipe = "pressured-water"
        },
		{
            type = "unlock-recipe",
            recipe = "super-alloy"
        },
		{
            type = "unlock-recipe",
            recipe = "genlab"
        },

    },
    unit =
    {
        count = 100,
        ingredients = {
            {"science-pack-1", 1},
			{"science-pack-2", 1},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
        },
        time = 70
    },
}
data:extend({technology})
