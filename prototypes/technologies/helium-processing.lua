TECHNOLOGY {
    type = "technology",
    name = "helium-processing",
    icon = "__pyfusionenergy__/graphics/technology/helium-processing.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"excavation-2"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "purified-air"
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
            recipe = "gravel-calcination"
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
            recipe = "gas-separator"
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
        {
            type = "unlock-recipe",
            recipe = "liquid-petgas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-petgas-separation"
        },
        {
            type = "unlock-recipe",
            recipe = "gas-stream-filtration"
        },
        {
            type = "unlock-recipe",
            recipe = "rich-gas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-rich-gas"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-rich-gas-distilation"
        },
        {
            type = "unlock-recipe",
            recipe = "purier-helium"
        },
        {
            type = "unlock-recipe",
            recipe = "helium"
        },
        {
            type = "unlock-recipe",
            recipe = "liquid-helium"
        },
        {
            type = "unlock-recipe",
            recipe = "evaporate-helium"
        },
        {
            type = "unlock-recipe",
            recipe = "super-alloy"
        }
    },
    unit = {
        count = 40,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 2},
        },
        time = 75
    }
}
