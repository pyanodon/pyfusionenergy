local technology = {
    type = "technology",
    name = "advanced-mining-facilities",
    icon = "__pyfusionenergy__/graphics/technology/advanced-mining-facilities.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"diamond-mining"},
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
            recipe = "hydrocyclone"
        },
		{
            type = "unlock-recipe",
            recipe = "mixer"
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
            recipe = "automated-screener"
        },
		{
            type = "unlock-recipe",
            recipe = "nmf"
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
        },
		
    },
    unit =
    {
        count = 50,
        ingredients = {
            {"science-pack-1", 2},
			{"science-pack-2", 2},
			{"science-pack-3", 1},
        },
        time = 70
    },
}
data:extend({technology})
