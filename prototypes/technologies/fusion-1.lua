local technology = {
    type = "technology",
    name = "fusion-mk01",
    icon = "__pyfusionenergy__/graphics/technology/fusion-1.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"diamond-mining", "helium-processing"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "pressured-water"
        },
        {
            type = "unlock-recipe",
            recipe = "genlab"
        },
        {
            type = "unlock-recipe",
            recipe = "py-heat-exchanger"
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
            recipe = "b2o3-milling"
        },
        {
            type = "unlock-recipe",
            recipe = "boron-mixture"
        },
        {
            type = "unlock-recipe",
            recipe = "boron"
        },
        {
            type = "unlock-recipe",
            recipe = "boron-carbide"
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
            {"science-pack-1", 1},
            {"science-pack-2", 1},
            {"science-pack-3", 1},
            {"production-science-pack", 1}
        },
        time = 70
    }
}
data:extend {technology}
