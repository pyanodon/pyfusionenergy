local technology = {
    type = "technology",
    name = "fusion-1",
    icon = "__pyfusionenergy__/graphics/technology/fusion-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"advanced-mining-facilities"},
    effects =
    {
		{
            type = "unlock-recipe",
            recipe = "molybdenite-pulp"
        },
		{
            type = "unlock-recipe",
            recipe = "molybdenum-pulp"
        },
		{
            type = "unlock-recipe",
            recipe = "molybdenum-concentrate"
        },
		{
            type = "unlock-recipe",
            recipe = "molybdenum-filtration"
        },
		{
            type = "unlock-recipe",
            recipe = "molybdenum-oxide"
        },
		{
            type = "unlock-recipe",
            recipe = "molybdenum-plate"
        },
		{
            type = "unlock-recipe",
            recipe = "vacuum"
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
