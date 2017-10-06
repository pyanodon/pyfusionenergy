local technology = {
    type = "technology",
    name = "regolite-mining",
    icon = "__pyfusionenergy__/graphics/technology/regolite-mining.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"diamond-mining","advanced-mining-facilities","helium-processing"},
    effects =
    {
		{
            type = "unlock-recipe",
            recipe = "regolite-mine"
        },
		{
            type = "unlock-recipe",
            recipe = "compressor"
        },
		{
            type = "unlock-recipe",
            recipe = "crush-regolite"
        },
		{
            type = "unlock-recipe",
            recipe = "regolite-recrush"
        },
		{
            type = "unlock-recipe",
            recipe = "milling-regolite"
        },
		{
            type = "unlock-recipe",
            recipe = "regolite-calcination"
        },
    },
    unit =
    {
        count = 35,
        ingredients = {
            {"science-pack-1", 2},
			{"science-pack-2", 2},
			{"science-pack-3", 2},
			{"production-science-pack", 1},
        },
        time = 75
    },
}
data:extend({technology})
