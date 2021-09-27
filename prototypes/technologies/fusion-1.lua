TECHNOLOGY {
    type = "technology",
    name = "fusion-mk01",
    icon = "__pyfusionenergygraphics__/graphics/technology/fusion-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"helium-processing", "boron-2", "energy-3", "molybdenum-processing", "vanadium-processing"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "pressured-water"
        },
        {
            type = "unlock-recipe",
            recipe = "genlab-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "py-turbine"
        },
        {
            type = "unlock-recipe",
            recipe = "sc-wire"
        },
        {
            type = "unlock-recipe",
            recipe = "ferrite"
        },
        {
            type = "unlock-recipe",
            recipe = "coil-core"
        },
        {
            type = "unlock-recipe",
            recipe = "sc-coil"
        },
        {
            type = "unlock-recipe",
            recipe = "magnetic-core"
        },
        {
            type = "unlock-recipe",
            recipe = "deposited-core"
        },
        {
            type = "unlock-recipe",
            recipe = "sc-unit"
        },
        {
            type = "unlock-recipe",
            recipe = "heavy-water"
        },
        {
            type = "unlock-recipe",
            recipe = "d2o-distilation"
        },
        {
            type = "unlock-recipe",
            recipe = "blanket-chassi"
        },
        {
            type = "unlock-recipe",
            recipe = "blanket"
        },
        {
            type = "unlock-recipe",
            recipe = "divertor"
        },
        {
            type = "unlock-recipe",
            recipe = "wall-shield"
        },
        {
            type = "unlock-recipe",
            recipe = "fusion-reactor-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "deuterium-fusion"
        },
        {
            type = "unlock-recipe",
            recipe = "steam-exchange1"
        }
    },
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        time = 70
    }
}
