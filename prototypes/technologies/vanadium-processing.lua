TECHNOLOGY {
    type = "technology",
    name = "vanadium-processing",
    icon = "__pyfusionenergygraphics__/graphics/technology/vanadium-processing.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"xyhiphoe"},
    effects = {
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
            recipe = "cobalt-solvent"
        },
        {
            type = "unlock-recipe",
            recipe = "solvent-separation"
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
        }
    },
    unit = {
        count = 300,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 1},
        },
        time = 70
    }
}
