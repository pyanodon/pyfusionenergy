TECHNOLOGY({
    type = "technology",
    name = "molybdenum-processing",
    icon = "__pyfusionenergygraphics__/graphics/technology/molybdenum-processing.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "molybdenite-pulp"
        },
        {
            type = "unlock-recipe",
            recipe = "mo-mine"
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
        }
    },
    unit = {
        count = 30,
        ingredients = {
            { "automation-science-pack", 2 },
            { "logistic-science-pack",   2 },
            { "chemical-science-pack",   1 },
            --{"production-science-pack", 1}
        },
        time = 70
    }
})
