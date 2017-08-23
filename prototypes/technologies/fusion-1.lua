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
		{
            type = "unlock-recipe",
            recipe = "pressured-water"
        },
		{
            type = "unlock-recipe",
            recipe = "phytoplankton"
        },
		{
            type = "unlock-recipe",
            recipe = "xyhiphoe-blood"
        },
		{
            type = "unlock-recipe",
            recipe = "xyhiphoe-hydrocyclone"
        },
		{
            type = "unlock-recipe",
            recipe = "vanabins"
        },
		{
            type = "unlock-recipe",
            recipe = "blue-liquor"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp1"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp2"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp3"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp4"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp5"
        },
		{
            type = "unlock-recipe",
            recipe = "vpulp-precip"
        },
		{
            type = "unlock-recipe",
            recipe = "pressured-vpulp"
        },
		{
            type = "unlock-recipe",
            recipe = "vanadates"
        },
		{
            type = "unlock-recipe",
            recipe = "vanadium-solution"
        },
		{
            type = "unlock-recipe",
            recipe = "vanadium-concentrate"
        },
		{
            type = "unlock-recipe",
            recipe = "organic-vanadate"
        },
		{
            type = "unlock-recipe",
            recipe = "industrial-solvent"
        },
		{
            type = "unlock-recipe",
            recipe = "cobalt-solvent"
        },
		{
            type = "unlock-recipe",
            recipe = "solvent-separation"
        },
		{
            type = "unlock-recipe",
            recipe = "soda-ash"
        },
		{
            type = "unlock-recipe",
            recipe = "acid-strip-solution"
        },
		{
            type = "unlock-recipe",
            recipe = "pregnant-solution"
        },
		{
            type = "unlock-recipe",
            recipe = "sodium-chlorate"
        },
		{
            type = "unlock-recipe",
            recipe = "vanadium-oxide"
        },
		{
            type = "unlock-recipe",
            recipe = "wastewater-filtration"
        },
		{
            type = "unlock-recipe",
            recipe = "wastewater-recovery"
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
