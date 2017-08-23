local technology = {
    type = "technology",
    name = "advanced-mining-facilities",
    icon = "__pyfusionenergy__/graphics/technology/advanced-mining-facilities.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"excavation-2","coal-processing-3"},
    effects =
    {
		{
            type = "unlock-recipe",
            recipe = "agitator"
        },
		{
            type = "unlock-recipe",
            recipe = "thickener"
        },
		{
            type = "unlock-recipe",
            recipe = "vacuum-pump"
        },
		{
            type = "unlock-recipe",
            recipe = "plankton-farm"
        },
		{
            type = "unlock-recipe",
            recipe = "xyhiphoe-pool"
        },
		{
            type = "unlock-recipe",
            recipe = "hydrocyclone"
        },
		{
            type = "unlock-recipe",
            recipe = "mixer"
        },
		{
            type = "unlock-recipe",
            recipe = "diamond-mine"
        },
    },
    unit =
    {
        count = 50,
        ingredients = {
            {"science-pack-1", 2},
			{"science-pack-2", 2},
			{"science-pack-3", 1},
			{"production-science-pack", 1},
        },
        time = 70
    },
}
data:extend({technology})
