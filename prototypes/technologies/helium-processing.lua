local technology = {
    type = "technology",
    name = "helium-processing",
    icon = "__pyfusionenergy__/graphics/technology/helium-processing.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"fusion-mk01"},
    effects =
    {
		{
            type = "unlock-recipe",
            recipe = "pressured-air"
        },
		{
            type = "unlock-recipe",
            recipe = "purified-air"
        },
		{
            type = "unlock-recipe",
            recipe = "cool-air"
        },
		{
            type = "unlock-recipe",
            recipe = "cold-clean-air"
        },
		{
            type = "unlock-recipe",
            recipe = "liquid-pure-air"
        },
		{
            type = "unlock-recipe",
            recipe = "liquid-air-distilation"
        },
		{
            type = "unlock-recipe",
            recipe = "stone-calcination"
        },
		{
            type = "unlock-recipe",
            recipe = "calcinate-separation"
        },
		{
            type = "unlock-recipe",
            recipe = "bacteria-1"
        },
		{
            type = "unlock-recipe",
            recipe = "kmauts-ration"
        },
		{
            type = "unlock-recipe",
            recipe = "kmauts-enclosure"
        },
		{
            type = "unlock-recipe",
            recipe = "bio-reactor"
        },
		{
            type = "unlock-recipe",
            recipe = "serine"
        },
		{
            type = "unlock-recipe",
            recipe = "ethanolamine"
        },
		{
            type = "unlock-recipe",
            recipe = "methyl-acrylate"
        },
		{
            type = "unlock-recipe",
            recipe = "high-purified-gas"
        },
    },
    unit =
    {
        count = 40,
        ingredients = {
            {"science-pack-1", 3},
			{"science-pack-2", 2},
			{"science-pack-3", 2},
			{"production-science-pack", 2},
        },
        time = 75
    },
}
data:extend({technology})
