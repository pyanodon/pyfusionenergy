TECHNOLOGY {
    type = "technology",
    name = "diamond-mining",
    icon = "__pyfusionenergy__/graphics/technology/diamond-mining.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"excavation-2"},
    effects = {
        {
            type = "unlock-recipe",
            recipe = "vacuum"
        },
        {
            type = "unlock-recipe",
            recipe = "diamond-mine"
        },
        {
            type = "unlock-recipe",
            recipe = "crushed-kimberlite"
        },
        {
            type = "unlock-recipe",
            recipe = "screening-kimberlite"
        },
        {
            type = "unlock-recipe",
            recipe = "kimberlite-recrushing"
        },
        {
            type = "unlock-recipe",
            recipe = "pure-kimberlite-recrushing"
        },
        {
            type = "unlock-recipe",
            recipe = "kimberlite-washing"
        },
        {
            type = "unlock-recipe",
            recipe = "screening-kimberlite-residue"
        },
        {
            type = "unlock-recipe",
            recipe = "diamond-rejects-recrushing"
        },
        {
            type = "unlock-recipe",
            recipe = "kimberlite-pulp"
        },
        {
            type = "unlock-recipe",
            recipe = "diamond-concentrate"
        },
        {
            type = "unlock-recipe",
            recipe = "diamond-tailings"
        },
        {
            type = "unlock-recipe",
            recipe = "secondary-crusher-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "grease-table-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "centrifugal-pan-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "jig-mk01"
        },
        {
            type = "unlock-recipe",
            recipe = "jig-diamond-concentrate"
        },
        {
            type = "unlock-recipe",
            recipe = "jig-diamond-tailings"
        },
        {
            type = "unlock-recipe",
            recipe = "diamond-rejects-screening"
        },
        {
            type = "unlock-recipe",
            recipe = "rejects-separation"
        },
        {
            type = "unlock-recipe",
            recipe = "grease"
        },
        {
            type = "unlock-recipe",
            recipe = "jig-separation"
        },
        {
            type = "unlock-recipe",
            recipe = "greasing-1"
        },
        {
            type = "unlock-recipe",
            recipe = "greasing-2"
        },
        {
            type = "unlock-recipe",
            recipe = "greasing-3"
        },
        {
            type = "unlock-recipe",
            recipe = "washing-crude"
        },
        {
            type = "unlock-recipe",
            recipe = "class-diamond"
        },
        {
            type = "unlock-recipe",
            recipe = "lead-container"
        },
        {
            type = "unlock-recipe",
            recipe = "science-coating"
        },
        {
            type = "unlock-recipe",
            recipe = "coated-container"
        },
        {
            type = "unlock-recipe",
            recipe = "production-science-pack"
        }
    },
    unit = {
        count = 30,
        ingredients = {
            {"automation-science-pack", 2},
            {"logistic-science-pack", 2},
            {"chemical-science-pack", 1}
        },
        time = 70
    }
}
