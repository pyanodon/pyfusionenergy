RECIPE {
    type = "recipe",
    name = "crushing-molybdenite",
    category = "crusher",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "molybdenum-ore", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-molybdenite", amount = 5},
        {type = "item", name = "stone",               amount = 2}
    },
    main_product = "crushed-molybdenite",
    icon = "__pyfusionenergygraphics__/graphics/icons/crush-molybdenite.png",
    icon_size = 32,
    subgroup = "py-crusher",
    order = "a"
}:add_unlock("molybdenum-processing")

RECIPE {
    type = "recipe",
    name = "milling-molybdenite",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "crushed-molybdenite", amount = 5}
    },
    results = {
        {type = "item", name = "molybdenite-dust", amount = 10},
        {type = "item", name = "gravel",           amount = 1}
    },
    main_product = "molybdenite-dust",
}:add_unlock("molybdenum-processing")

RECIPE {
    type = "recipe",
    name = "molybdenum-concentrate",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "molybdenite-pulp", amount = 150},
        {type = "fluid", name = "water",            amount = 200}
    },
    results = {
        {type = "item",  name = "molybdenum-concentrate", amount = 10},
        {type = "fluid", name = "muddy-sludge",      amount = 150}
    },
    main_product = "molybdenum-concentrate",
    icon = "__pyfusionenergygraphics__/graphics/icons/molybdenum-concentrate-hydrocyclone.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "b"
}

RECIPE {
    type = "recipe",
    name = "molybdenum-filtration",
    category = "carbonfilter",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molybdenum-pulp",  amount = 100},
        {type = "fluid", name = "vacuum",           amount = 50},
        {type = "item",  name = "filtration-media", amount = 1}
    },
    results = {
        {type = "item", name = "molybdenum-sulfide", amount = 10}
    },
    main_product = "molybdenum-sulfide",
}

RECIPE {
    type = "recipe",
    name = "molybdenum-oxide",
    category = "hpf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "molybdenum-sulfide", amount = 10}
    },
    results = {
        {type = "item", name = "molybdenum-oxide", amount = 10},
        {type = "item", name = "sulfur",           amount = 1}
    },
    main_product = "molybdenum-oxide",
}

RECIPE {
    type = "recipe",
    name = "molybdenum-plate",
    category = "chemistry", --bobs electrolyzer
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "molybdenum-oxide", amount = 10} --add hydrogen
    },
    results = {
        {type = "item",  name = "molybdenum-plate", amount = 3},
        {type = "fluid", name = "water",            amount = 10}
    },
    main_product = "molybdenum-plate",
}

RECIPE {
    type = "recipe",
    name = "phytoplankton",
    category = "plankton",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "water",    amount = 500},
        {type = "item",  name = "iron-ore", amount = 8}
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 10}
    },
    main_product = "phytoplankton",
}:add_unlock("xyhiphoe")

RECIPE {
    type = "recipe",
    name = "arthropod-blood",
    category = "xyhiphoe",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "phytoplankton",   amount = 30},
        {type = "item",  name = "tailings-dust",   amount = 30}
    },
    results = {
        {type = "fluid", name = "arthropod-blood", amount = 20},
        {type = "fluid", name = "waste-water",     amount = 500}
    },
    main_product = "arthropod-blood",
}:add_unlock("xyhiphoe")

RECIPE {
    type = "recipe",
    name = "xyhiphoe-hydrocyclone",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "arthropod-blood", amount = 50}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 100}
    },
    main_product = "organic-solvent",
}:add_unlock("xyhiphoe")

RECIPE {
    type = "recipe",
    name = "cobalt-solvent",
    category = "evaporator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "used-solvent", amount = 50}
    },
    results = {
        {type = "item", name = "ash", amount = 10} --updated-bob cobalt-ore
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/used-solvent.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "c"
}

RECIPE {
    type = "recipe",
    name = "solvent-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "used-solvent", amount = 100}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "blue-liquor",     amount = 50}
    },
    main_product = "organic-solvent",
    icon = "__pyfusionenergygraphics__/graphics/icons/used-solvent.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "d"
}

RECIPE {
    type = "recipe",
    name = "sodium-chlorate",
    category = "chemistry", --electrolyzer
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "steam",        amount = 150},
        {type = "fluid", name = "water-saline", amount = 100} --bob salt
    },
    results = {
        {type = "item", name = "sodium-chlorate", amount = 5}
        --bob hydrogen
    },
    main_product = "sodium-chlorate",
}

RECIPE {
    type = "recipe",
    name = "vanadium-oxide",
    category = "evaporator",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "vpulp-precip", amount = 100}
    },
    results = {
        {type = "item",  name = "vanadium-oxide",    amount = 15},
        {type = "fluid", name = "muddy-sludge", amount = 300}
    },
    main_product = "vanadium-oxide",
}

RECIPE {
    type = "recipe",
    name = "wastewater-filtration",
    category = "carbonfilter",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "waste-water",      amount = 100},
        {type = "item",  name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 100}
    },
}:add_unlock("xyhiphoe")

RECIPE {
    type = "recipe",
    name = "super-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "helium",           amount = 10},
        {type = "item",  name = "steel-plate",      amount = 50},
        {type = "item",  name = "fuelrod-mk01",     amount = 2},
        {type = "item",  name = "limestone",        amount = 3},
        {type = "item",  name = "sand-casting",     amount = 2},
        {type = "item",  name = "chromium",         amount = 20},
        {type = "item",  name = "molybdenum-oxide", amount = 5},
        {type = "item",  name = "nexelit-plate",    amount = 5},
        {type = "item",  name = "vanadium-oxide",   amount = 8}
    },
    results = {
        {type = "item", name = "super-alloy", amount = 5}
    },
}

RECIPE {
    type = "recipe",
    name = "crushed-kimberlite",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "kimberlite-rock", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-kimberlite", amount = 10},
        {type = "item", name = "stone",              amount = 3}
    },
    --main_product= "crushed-kimberlite",
    icon = "__pyfusionenergygraphics__/graphics/icons/crush-kimberlite.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "screening-kimberlite",
    category = "screener",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crushed-kimberlite", amount = 10}
    },
    results = {
        {type = "item", name = "kimberlite-rejects", amount = 4},
        {type = "item", name = "kimberlite-grade2",  amount = 5}
    },
    --main_product= "kimberlite-grade2",
    icon = "__pyfusionenergygraphics__/graphics/icons/screening-kimberlite.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kimberlite-rejects", amount = 20}
    },
    results = {
        {type = "item", name = "crushed-kimberlite", amount = 1},
        {type = "item", name = "gravel",             amount = 1}
    },
    --main_product= "crushed-kimberlite",
    icon = "__pyfusionenergygraphics__/graphics/icons/kimberlite-recrush.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "kimberlite-washing",
    category = "washer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "kimberlite-grade2", amount = 5},
        {type = "fluid", name = "water",             amount = 100}
    },
    results = {
        {type = "item",  name = "kimberlite-grade3",      amount = 5},
        {type = "item",  name = "pure-kimberlite-grade2", amount = 1,  probability = 0.6},
        {type = "fluid", name = "muddy-sludge",      amount = 100},
        {type = "item",  name = "sand",                   amount = 10}
    },
    --main_product= "kimberlite-grade3",
    icon = "__pyfusionenergygraphics__/graphics/icons/kimberlite-washer.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "pure-kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "pure-kimberlite-grade2", amount = 3}
    },
    results = {
        {type = "item", name = "kimberlite-grade3", amount = 2},
        {type = "item", name = "gravel",            amount = 1}
    },
    --main_product= "kimberlite-grade3",
    icon = "__pyfusionenergygraphics__/graphics/icons/kimberlite-grade2-recrush.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "screening-kimberlite-residue",
    category = "screener",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "kimberlite-residue", amount = 10}
    },
    results = {
        {type = "item", name = "diamond-reject", amount = 8},
        {type = "item", name = "gravel",         amount = 2}
    },
    --main_product= "diamond-reject",
    icon = "__pyfusionenergygraphics__/graphics/icons/screening-kimberlite-residue.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "diamond-rejects-recrushing",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "diamond-reject", amount = 8}
    },
    results = {
        {type = "item", name = "pure-kimberlite-grade2", amount = 2, probability = 0.7},
        {type = "item", name = "gravel",                 amount = 2, probability = 0.5}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergygraphics__/graphics/icons/diamond-reject-recrush.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "diamond-rejects-screening",
    category = "screener",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item", name = "diamond-reject", amount = 10}
    },
    results = {
        {type = "item", name = "processed-rejects", amount = 16},
        {type = "item", name = "sand",              amount = 10}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergygraphics__/graphics/icons/screening-diamond-reject.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "h"
}

RECIPE {
    type = "recipe",
    name = "rejects-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "processed-rejects", amount = 20}
    },
    results = {
        {type = "item", name = "limestone",     amount = 3},
        {type = "item", name = "chromite-sand", amount = 6},
        {type = "item", name = "diamond",       amount = 1, probability = 0.6}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergygraphics__/graphics/icons/rejects-separation.png",
    icon_size = 32,
    subgroup = "py-items-class",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "jig-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "jig-concentrate", amount = 300}
    },
    results = {
        {type = "fluid", name = "jig-grade1", amount = 100},
        {type = "fluid", name = "jig-grade2", amount = 100},
        {type = "fluid", name = "jig-grade3", amount = 100}
    },
    --main_product= "jig-grade1",
    icon = "__pyfusionenergygraphics__/graphics/icons/jig1.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "j"
}

RECIPE {
    type = "recipe",
    name = "greasing-1",
    category = "grease",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "jig-grade1",   amount = 50},
        {type = "fluid", name = "slacked-lime", amount = 100},
        {type = "fluid", name = "grease",       amount = 25}
    },
    results = {
        {type = "item",  name = "crude-diamond",     amount = 7},
        {type = "fluid", name = "muddy-sludge", amount = 100}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/greasing-1.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "j1"
}

RECIPE {
    type = "recipe",
    name = "greasing-2",
    category = "grease",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "jig-grade2", amount = 50},
        {type = "fluid", name = "tar",        amount = 100},
        {type = "fluid", name = "grease",     amount = 25}
    },
    results = {
        {type = "item",  name = "crude-diamond",     amount = 5},
        {type = "fluid", name = "tailings", amount = 150}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/greasing-2.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "j2"
}

RECIPE {
    type = "recipe",
    name = "greasing-3",
    category = "grease",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "jig-grade3",      amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "grease",          amount = 25}
    },
    results = {
        {type = "item",  name = "crude-diamond",     amount = 2},
        {type = "fluid", name = "tailings", amount = 200}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/greasing-3.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "j3"
}

RECIPE {
    type = "recipe",
    name = "washing-crude",
    category = "washer",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "item",  name = "crude-diamond", amount = 20}
    },
    results = {
        {type = "item",  name = "washed-diamond",    amount = 10},
        {type = "fluid", name = "muddy-sludge", amount = 120}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/crude-diamond-washer.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "k"
}

RECIPE {
    type = "recipe",
    name = "class-diamond",
    category = "classifier",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "washed-diamond", amount = 40}
    },
    results = {
        {type = "item", name = "diamond",            amount = 20},
        {type = "item", name = "kimberlite-residue", amount = 10}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/class-diamond.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "k"
}

RECIPE {
    type = "recipe",
    name = "cool-air",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-air",  amount = 120},
        {type = "fluid", name = "pressured-air", amount = 90}
    },
    results = {
        {type = "fluid", name = "cold-air", amount = 45}
    },
    main_product = "cold-air",
}

RECIPE {
    type = "recipe",
    name = "liquid-air-distilation",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "liquid-pure-air", amount = 5}
    },
    results = {
        {type = "fluid", name = "dry-gas-stream", amount = 1, probability = 0.2},
        {type = "fluid", name = "helium",         amount = 1, probability = 0.4}
    },
    main_product = "dry-gas-stream",
}

RECIPE {
    type = "recipe",
    name = "calcinate-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "item", name = "calcinates", amount = 20}
    },
    results = {
        {type = "item", name = "iron-ore",   amount = 1, probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.4},
        {type = "item", name = "limestone",  amount = 1, probability = 0.3},
        {type = "item", name = "sulfur",     amount = 1, probability = 0.3}
        --add bobs minerals
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/calcinate-separation.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "l"
}

RECIPE {
    type = "recipe",
    name = "bacteria-1",
    category = "genlab",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item",  name = "nexelit-plate",     amount = 10},
        {type = "item",  name = "lens",              amount = 5},
        {type = "item",  name = "serine",            amount = 15},
        {type = "item",  name = "fawogae-substrate", amount = 20},
        {type = "fluid", name = "phytoplankton",     amount = 25}
    },
    results = {
        {type = "fluid", name = "bacteria-1", amount = 50}
    },
}

RECIPE {
    type = "recipe",
    name = "serine",
    category = "kmauts",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts-ration", amount = 1}
    },
    results = {
        {type = "item", name = "serine", amount = 10}
    },
}

RECIPE {
    type = "recipe",
    name = "methyl-acrylate",
    category = "methanol",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "iron-plate",    amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "methanol",      amount = 100}
    },
    results = {
        {type = "item", name = "methyl-acrylate", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "kmauts-ration",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-plate",  amount = 2}, --bobs tin plate
        {type = "item", name = "mukmoux-fat", amount = 5},
        {type = "item", name = "organics",    amount = 50},
        {type = "item", name = "ralesia",     amount = 15}
    },
    results = {
        {type = "item", name = "kmauts-ration", amount = 3}
    },
}

RECIPE {
    type = "recipe",
    name = "crush-regolite",
    category = "crusher",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "regolite-rock", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-regolite", amount = 5},
        {type = "item", name = "stone",            amount = 2}
    },
    main_product = "crushed-regolite",
    icon = "__pyfusionenergygraphics__/graphics/icons/crush-regolite.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "regolite-recrush",
    category = "secondary-crusher",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crushed-regolite", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-regolite", amount = 5},
        {type = "item", name = "gravel",            amount = 1}
    },
    main_product = "powdered-regolite",
    icon = "__pyfusionenergygraphics__/graphics/icons/regolite-recrush.png",
    icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "a"
}

RECIPE {
    type = "recipe",
    name = "milling-regolite",
    category = "ball-mill",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-regolite", amount = 5}
    },
    results = {
        {type = "item", name = "regolite-dust", amount = 5},
        {type = "item", name = "sand",          amount = 2}
    },
    main_product = "regolite-dust",
}

RECIPE {
    type = "recipe",
    name = "regolite-calcination",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "regolite-dust", amount = 20}
    },
    results = {
        {type = "item",  name = "calcinates",     amount = 12},
        {type = "item",  name = "ash",            amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 10}
        --add bobs hydrogen
    },
    main_product = "calcinates",
}

RECIPE {
    type = "recipe",
    name = "liquid-petgas",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "petroleum-gas", amount = 5},
        {type = "fluid", name = "water",         amount = 100},
        {type = "fluid", name = "gasoline",      amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-petgas", amount = 5},
        {type = "fluid", name = "steam",         amount = 100, temperature = 150, ignored_by_productivity = 100, ignored_by_stats = 100}
    },
    main_product = "liquid-petgas",
}

RECIPE {
    type = "recipe",
    name = "liquid-petgas-separation",
    category = "fluid-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "liquid-petgas", amount = 20},
        {type = "item",  name = "active-carbon", amount = 2}
    },
    results = {
        {type = "fluid", name = "aromatics",  amount = 10},
        {type = "fluid", name = "gas-stream", amount = 20}
    },
    main_product = "gas-stream",
}

RECIPE {
    type = "recipe",
    name = "gas-stream-filtration",
    category = "carbonfilter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "gas-stream",       amount = 20},
        {type = "item",  name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "water",          amount = 10},
        {type = "fluid", name = "dry-gas-stream", amount = 3}
    },
    main_product = "dry-gas-stream",
}

RECIPE {
    type = "recipe",
    name = "liquid-rich-gas-distilation",
    category = "distilator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "liquid-rich-gas", amount = 30}
    },
    results = {
        {type = "fluid", name = "water",           amount = 10}, -- bobs pyliquid-nitrogen
        {type = "fluid", name = "helium-rich-gas", amount = 10}
    },
    main_product = "helium-rich-gas",
}

RECIPE {
    type = "recipe",
    name = "helium",
    category = "gas-separator",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "purier-helium", amount = 8}
    },
    results = {
        {type = "fluid", name = "water",  amount = 10},
        {type = "fluid", name = "helium", amount = 50}
    },
    main_product = "helium",
}

RECIPE {
    type = "recipe",
    name = "nexelit-matrix",
    category = "nmf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "boric-acid",    amount = 150},
        {type = "fluid", name = "vacuum",        amount = 100},
        {type = "item",  name = "nexelit-plate", amount = 4},
        {type = "item",  name = "treated-wood",  amount = 3}
    },
    results = {
        {type = "item", name = "nexelit-matrix", amount = 4}
    },
}:add_unlock("nenbit-matrix")

RECIPE {
    type = "recipe",
    name = "nbti-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 5},
        {type = "item", name = "steel-plate",   amount = 10}
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 2}
    },
}:add_unlock("nenbit-matrix")

RECIPE {
    type = "recipe",
    name = "nenbit-matrix",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "nbti-alloy",     amount = 2},
        {type = "item", name = "nexelit-matrix", amount = 10}
    },
    results = {
        {type = "item", name = "nenbit-matrix", amount = 2}
    },
}:add_unlock("nenbit-matrix")

RECIPE {
    type = "recipe",
    name = "ferrite",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 20},
        {type = "item", name = "nichrome",   amount = 3}
        --add zinc plate
    },
    results = {
        {type = "item", name = "ferrite", amount = 4}
    },
}

RECIPE {
    type = "recipe",
    name = "coil-core",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ferrite",      amount = 4},
        {type = "item", name = "copper-cable", amount = 40} --bobs gilded copper cable
    },
    results = {
        {type = "item", name = "coil-core", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "sc-wire",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-plate",    amount = 10}, --bobs tin plate
        {type = "item", name = "nenbit-matrix", amount = 1}
    },
    results = {
        {type = "item", name = "sc-wire", amount = 5}
    },
}

RECIPE {
    type = "recipe",
    name = "sc-coil",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sc-wire",     amount = 10},
        {type = "item", name = "plastic-bar", amount = 10},
        {type = "item", name = "coil-core",   amount = 1}
    },
    results = {
        {type = "item", name = "sc-coil", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "magnetic-core",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "item", name = "sc-coil",      amount = 2},
        {type = "item", name = "cladded-core", amount = 3},
        {type = "item", name = "kevlar",       amount = 8}
    },
    results = {
        {type = "item", name = "magnetic-core", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "deposited-core",
    category = "gas-separator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "magnetic-core",  amount = 1},
        {type = "item", name = "vanadium-oxide", amount = 10}
    },
    results = {
        {type = "item", name = "deposited-core", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "sc-unit",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 180,
    ingredients = {
        {type = "item", name = "molybdenum-plate", amount = 60},
        {type = "item", name = "deposited-core",   amount = 12},
        {type = "item", name = "advanced-circuit", amount = 12}
        --add liquid nitrogen
    },
    results = {
        {type = "item", name = "sc-unit", amount = 18}
    },
}

RECIPE {
    type = "recipe",
    name = "d2o-distilation",
    category = "distilator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "heavy-water", amount = 60}
    },
    results = {
        {type = "fluid", name = "deuterium", amount = 4}
        --add oxygen
    },
    main_product = "deuterium",
}

RECIPE {
    type = "recipe",
    name = "b2o3-milling",
    category = "ball-mill",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "boron-trioxide", amount = 20}
    },
    results = {
        {type = "item", name = "b2o3-dust", amount = 40}
    },
}:add_unlock("boron-mk02")

RECIPE {
    type = "recipe",
    name = "boron-mixture",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "b2o3-dust", amount = 15},
        {type = "fluid", name = "helium",    amount = 15}
        --add bobs aluminum
    },
    results = {
        {type = "item", name = "boron-mixture", amount = 5}
    },
}:add_unlock("boron-mk02")

RECIPE {
    type = "recipe",
    name = "boron",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "boron-mixture", amount = 3},
        {type = "fluid", name = "refsyngas",     amount = 300}
    },
    results = {
        {type = "item",  name = "boron",    amount = 2},
        {type = "fluid", name = "diborane", amount = 50, ignored_by_productivity = 50, ignored_by_stats = 50}
    },
    main_product = "boron",
}:add_unlock("boron-mk02")

RECIPE {
    type = "recipe",
    name = "boron-carbide",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "boron-trioxide", amount = 2},
        {type = "item", name = "coke",           amount = 7} --bobs carbon
    },
    results = {
        {type = "item",  name = "boron-carbide",  amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 30}
    },
    main_product = "boron-carbide",
}:add_unlock("boron-mk02")

RECIPE {
    type = "recipe",
    name = "blanket-chassi",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "super-alloy",      amount = 6},
        {type = "item",  name = "ferrite",          amount = 10},
        {type = "item",  name = "molybdenum-oxide", amount = 5},
        {type = "item",  name = "vanadium-oxide",   amount = 5},
        {type = "item",  name = "copper-plate",     amount = 25},
        {type = "fluid", name = "helium",           amount = 20}
    },
    results = {
        {type = "item", name = "blanket-chassi", amount = 3}
    },
}

RECIPE {
    type = "recipe",
    name = "blanket",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "item", name = "blanket-chassi", amount = 2},
        {type = "item", name = "boron-carbide",  amount = 10},
        {type = "item", name = "diamond",        amount = 20}
        --add bobs lithium and lead
    },
    results = {
        {type = "item", name = "blanket", amount = 3}
    },
}

RECIPE {
    type = "recipe",
    name = "divertor",
    category = "crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = "diamond",     amount = 10},
        {type = "item", name = "super-alloy", amount = 10}
        --add bobs tungstein
    },
    results = {
        {type = "item", name = "divertor", amount = 2}
    },
}

RECIPE {
    type = "recipe",
    name = "wall-shield",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "steel-plate",   amount = 20},
        {type = "item", name = "diamond",       amount = 5},
        {type = "item", name = "super-alloy",   amount = 6},
        {type = "item", name = "boron-carbide", amount = 10},
        {type = "item", name = "ferrite",       amount = 15}
    },
    results = {
        {type = "item", name = "wall-shield", amount = 5}
    },
}

RECIPE {
    type = "recipe",
    name = "reinforced-wall-shield",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item",  name = "wall-shield", amount = 1},
        {type = "item",  name = "diamond",     amount = 1},
        {type = "fluid", name = "refsyngas",   amount = 100}
    },
    results = {
        {type = "item", name = "reinforced-wall-shield", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "deuterium-fusion",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium",       amount = 100},
        {type = "fluid", name = "pressured-water", amount = 4500},
        {type = "item",  name = "blanket",         amount = 1},
        {type = "item",  name = "divertor",        amount = 2},
        {type = "item",  name = "wall-shield",     amount = 5},
        {type = "item",  name = "sc-unit",         amount = 4},
        {type = "fluid", name = "liquid-helium",   amount = 30},
        {type = "fluid", name = "water",           amount = 2000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 1000},
        {type = "fluid", name = "helium",         amount = 150},
        {type = "fluid", name = "tritium",        amount = 20},
        {type = "fluid", name = "helium3",        amount = 30},
        {type = "fluid", name = "steam",          amount = 2000, temperature = 150, ignored_by_productivity = 2000, ignored_by_stats = 2000},
        {type = "item",  name = "blanket",        amount = 1,    probability = 0.5},
        {type = "item",  name = "divertor",       amount = 1,    probability = 0.5},
        {type = "item",  name = "wall-shield",    amount = 3,    probability = 0.5},
        {type = "item",  name = "sc-unit",        amount = 3,    probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-deuterium.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE {
    type = "recipe",
    name = "dt-he3",
    category = "fusion-02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium",              amount = 200},
        {type = "fluid", name = "helium3",                amount = 90},
        {type = "fluid", name = "pressured-water",        amount = 4000},
        {type = "item",  name = "blanket",                amount = 1},
        {type = "item",  name = "divertor",               amount = 3},
        {type = "item",  name = "reinforced-wall-shield", amount = 5},
        {type = "item",  name = "sc-unit",                amount = 4},
        {type = "fluid", name = "liquid-helium",          amount = 35},
        {type = "fluid", name = "water",                  amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam",         amount = 4000, temperature = 3000},
        {type = "fluid", name = "helium",                 amount = 175},
        {type = "fluid", name = "proton",                 amount = 15},
        {type = "fluid", name = "steam",                  amount = 5000, temperature = 150, ignored_by_productivity = 5000, ignored_by_stats = 5000},
        {type = "item",  name = "blanket",                amount = 1,    probability = 0.5},
        {type = "item",  name = "divertor",               amount = 1,    probability = 0.5},
        {type = "item",  name = "reinforced-wall-shield", amount = 3,    probability = 0.5},
        {type = "item",  name = "sc-unit",                amount = 3,    probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-he3.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE {
    type = "recipe",
    name = "dt-fusion",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium",              amount = 80},
        {type = "fluid", name = "tritium",                amount = 20,  ignored_by_stats = 5},
        {type = "fluid", name = "pressured-water",        amount = 4500},
        {type = "item",  name = "blanket",                amount = 2},
        {type = "item",  name = "divertor",               amount = 2},
        {type = "item",  name = "reinforced-wall-shield", amount = 5},
        {type = "item",  name = "sc-unit",                amount = 4},
        {type = "fluid", name = "liquid-helium",          amount = 30},
        {type = "fluid", name = "water",                  amount = 3500}
    },
    results = {
        {type = "fluid", name = "critical-steam",         amount = 4000, temperature = 2000},
        {type = "fluid", name = "helium",                 amount = 200},
        {type = "fluid", name = "tritium",                amount = 5,    ignored_by_stats = 5, ignored_by_productivity = 5},
        {type = "fluid", name = "steam",                  amount = 3500, temperature = 150,    ignored_by_productivity = 3500, ignored_by_stats = 3500},
        {type = "item",  name = "blanket",                amount = 1,    probability = 0.5,    ignored_by_productivity = 1},
        {type = "item",  name = "divertor",               amount = 1,    probability = 0.5,    ignored_by_productivity = 1},
        {type = "item",  name = "reinforced-wall-shield", amount = 3,    probability = 0.5,    ignored_by_productivity = 3},
        {type = "item",  name = "sc-unit",                amount = 3,    probability = 0.5,    ignored_by_productivity = 3},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-dt.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE {
    type = "recipe",
    name = "b-h",
    category = "fusion-02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "proton",                  amount = 15},
        {type = "fluid", name = "pressured-water",         amount = 5000},
        {type = "item",  name = "blanket",                 amount = 1},
        {type = "item",  name = "divertor",                amount = 8},
        {type = "item",  name = "wall-shield",             amount = 5},
        {type = "item",  name = "boron",                   amount = 15},
        {type = "item",  name = "production-science-pack", amount = 5},
        {type = "fluid", name = "liquid-helium",           amount = 100},
        {type = "fluid", name = "water",                   amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 4000},
        {type = "fluid", name = "helium",         amount = 500},
        {type = "fluid", name = "steam",          amount = 5000, temperature = 150, ignored_by_productivity = 5000, ignored_by_stats = 5000},
        {type = "item",  name = "blanket",        amount = 1,    probability = 0.6},
        {type = "item",  name = "divertor",       amount = 2,    probability = 0.6},
        {type = "item",  name = "wall-shield",    amount = 3,    probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-bh.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e",
    show_details_in_recipe_tooltip = false
}

RECIPE {
    type = "recipe",
    name = "steam-exchange1",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 1000, temperature = 1000},
        {type = "fluid", name = "water",          amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 2000, temperature = 1000},
        {type = "fluid", name = "steam",           amount = 250,  temperature = 150, ignored_by_productivity = 250, ignored_by_stats = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "steam-exchange2",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 1000, temperature = 2000},
        {type = "fluid", name = "water",          amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 2000, temperature = 2000},
        {type = "fluid", name = "steam",           amount = 250,  temperature = 150, ignored_by_productivity = 250, ignored_by_stats = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange2.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "steam-exchange3",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 1000, temperature = 3000},
        {type = "fluid", name = "water",          amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 2000, temperature = 3000},
        {type = "fluid", name = "steam",           amount = 250,  temperature = 150, ignored_by_productivity = 250, ignored_by_stats = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange3.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "steam-exchange4",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 1000, temperature = 4000},
        {type = "fluid", name = "water",          amount = 400}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 2000, temperature = 4000},
        {type = "fluid", name = "steam",           amount = 400,  temperature = 150, ignored_by_productivity = 400, ignored_by_stats = 400}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-exchange4.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "lead-container",
    category = "crafting",
    enabled = false,
    energy_required = 7,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 20}, --bob lead plate
        {type = "item", name = "nbfe-alloy", amount = 10}
    },
    results = {
        {type = "item", name = "lead-container", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "science-coating",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "diamond",     amount = 10},
        {type = "item", name = "pipe",        amount = 1}, --pyindustry niobium-pipe
        {type = "item", name = "steel-plate", amount = 10} --bobs titanium plate
    },
    results = {
        {type = "item", name = "science-coating", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "coated-container",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "lead-container",  amount = 2},
        {type = "item", name = "science-coating", amount = 1}
    },
    results = {
        {type = "item", name = "coated-container", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "nuclear-sample",
    category = "mixer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "plutonium",               amount = 5},
        {type = "item",  name = "automation-science-pack", amount = 1},
        {type = "fluid", name = "boric-acid",              amount = 100},
        {type = "fluid", name = "industrial-solvent",      amount = 100},
        {type = "fluid", name = "aromatics",               amount = 50}
    },
    results = {
        {type = "item", name = "nuclear-sample", amount = 1}
    },
}:add_unlock("production-science-pack")

RECIPE {
    type = "recipe",
    name = "control-unit",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "advanced-circuit",  amount = 10},
        {type = "item", name = "nexelit-cartridge", amount = 1},
        {type = "item", name = "nenbit-matrix",     amount = 4},
        {type = "item", name = "fuelrod-mk01",      amount = 2},
        {type = "item", name = "iron-plate",        amount = 4}
    },
    results = {
        {type = "item", name = "control-unit", amount = 2}
    },
}:add_unlock("production-science-pack")

RECIPE {
    type = "recipe",
    name = "production-science-pack",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "control-unit",     amount = 2},
        {type = "item", name = "coated-container", amount = 2},
        {type = "item", name = "nuclear-sample",   amount = 4}
    },
    results = {
        {type = "item", name = "production-science-pack", amount = 6}
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png",
    icon_size = 64
}

RECIPE {
    type = "recipe",
    name = "agzn-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item",  name = "stone",      amount = 10}, --bobs zinc plate
        {type = "item",  name = "iron-plate", amount = 20}, --bobs silver plate
        {type = "fluid", name = "refsyngas",  amount = 200}
    },
    results = {
        {type = "item", name = "agzn-alloy", amount = 2}
    },
}

RECIPE {
    type = "recipe",
    name = "silver-foam",
    category = "rectisol",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item",  name = "agzn-alloy",        amount = 1},
        {type = "item",  name = "limestone",         amount = 30},
        {type = "fluid", name = "acetylene",         amount = 200},
        {type = "fluid", name = "water",             amount = 200},
        {type = "fluid", name = "hydrogen-peroxide", amount = 100}
    },
    results = {
        {type = "item", name = "silver-foam", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "he3-separation",
    category = "gas-separator",
    enabled = false,
    energy_required = 8,
    ingredients = {
        {type = "item",  name = "silver-foam",   amount = 1},
        {type = "fluid", name = "helium",        amount = 10, ignored_by_stats = 2},
        {type = "item",  name = "niobium-plate", amount = 4}
    },
    results = {
        {type = "fluid", name = "helium3", amount = 8},
        {type = "fluid", name = "helium",  amount = 2, ignored_by_stats = 2, ignored_by_productivity = 2}
    },
    main_product = "helium3",
}
RECIPE {
    type = "recipe",
    name = "mining-molybdenum",
    category = "ground-borer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "lubricant",  amount = 100},
        {type = "fluid", name = "coal-gas",   amount = 100},
        {type = "item",  name = "drill-head", amount = 2}
    },
    results = {
        {type = "item", name = "molybdenum-ore", amount = 15}
    },
    main_product = "molybdenum-ore",
    icon = "__pyfusionenergygraphics__/graphics/icons/drilling-mo.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "c"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "steam-heating",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "steam",        amount = 1000, maximum_temperature = 500, ignored_by_stats = 1000},
        {type = "fluid", name = "water",        amount = 100},
        {type = "item",  name = "fuelrod-mk01", amount = 1},
    },
    results = {
        {type = "fluid", name = "steam", amount = 1000, temperature = 2000, ignored_by_stats = 1000, ignored_by_productivity = 1000},
    },
    main_product = "steam",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-heating.png",
    icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}:add_unlock("fusion-mk01")

RECIPE {
    type = "recipe",
    name = "log7",
    category = "nursery",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 200},
    },
    results = {
        {type = "item", name = "log", amount = 3}
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/log7.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "c9"
}:add_unlock("wood-processing-3")

RECIPE {
    type = "recipe",
    name = "log8",
    category = "nursery",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "waste-water",    amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 250}
    },
    results = {
        {type = "item", name = "log", amount = 3}
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/log8.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "c9-1"
}:add_unlock("wood-processing-3")

RECIPE {
    type = "recipe",
    name = "acidgas-2",
    category = "compressor",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 2000},
        {type = "fluid", name = "water",    amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "acidgas", amount = 30},
        {type = "fluid", name = "steam",   amount = 600, temperature = 150, ignored_by_productivity = 600, ignored_by_stats = 600}
    },
    main_product = "acidgas",
}:add_unlock("advanced-oil-processing")

RECIPE {
    type = "recipe",
    name = "gasoline",
    category = "fluid-separator",
    enabled = false,
    energy_required = 2.8,
    ingredients = {
        {type = "fluid", name = "olefin",        amount = 300},
        {type = "item",  name = "nexelit-plate", amount = 2},
        --{type="fluid", name="hydrogen", amount=20},
        {type = "fluid", name = "light-oil",     amount = 200}
    },
    results = {
        {type = "fluid", name = "gasoline", amount = 150}
    },
    main_product = "gasoline",
    icon = "__pycoalprocessinggraphics__/graphics/icons/gasoline.png",
    icon_size = 32,
    subgroup = "py-fluids",
    order = "d6"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "plutonium-fuel-cell",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "niobium-plate",    amount = 3},
        {type = "item", name = "molybdenum-plate", amount = 2},
        {type = "item", name = "uranium-238",      amount = 12},
        {type = "item", name = "plutonium",        amount = 2},
    },
    results = {
        {type = "item", name = "mox-fuel-cell", amount = 1},
    },
    main_product = "mox-fuel-cell",
}:add_unlock("kovarex-enrichment-process-2")

RECIPE {
    type = "recipe",
    name = "plutonium-fuel-reprocessing",
    category = "centrifuging",
    enabled = false,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "used-up-mox-fuel-cell", amount = 2},
    },
    results = {
        {type = "item", name = "uranium-238", amount = 6},
        {type = "item", name = "plutonium",   amount = 12}
    },
    main_product = "plutonium",
    subgroup = "intermediate-product",
    order = "t",
}:add_unlock("kovarex-enrichment-process-2")

RECIPE {
    type = "recipe",
    name = "acetylene-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "acetylene", amount = 100},
        {type = "fluid", name = "water",     amount = 100},
        {type = "item",  name = "coke",      amount = 3}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 1600},
        {type = "fluid", name = "steam",               amount = 100, temperature = 150, ignored_by_productivity = 100, ignored_by_stats = 100}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-acetylene.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "g"
}:add_unlock("energy-3")

RECIPE {
    type = "recipe",
    name = "calcium-carbide",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "coke", amount = 7},
        {type = "item", name = "lime", amount = 2}
    },
    results = {
        {type = "item", name = "calcium-carbide", amount = 10}
    }
}

--GASOLINE to CM1
RECIPE {
    type = "recipe",
    name = "gasoline-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "gasoline",     amount = 100},
        {type = "fluid", name = "water",        amount = 1000},
        {type = "item",  name = "coke",         amount = 5},
        {type = "item",  name = "fuelrod-mk01", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150,  temperature = 2600},
        {type = "fluid", name = "steam",               amount = 1000, temperature = 150, ignored_by_productivity = 1000, ignored_by_stats = 1000}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-gasoline.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "j"
}:add_unlock("energy-3")

if not mods["pyhightech"] then
    RECIPE {
        type = "recipe",
        name = "iron-oxide",
        category = "chemistry",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "hydrogen-peroxide", amount = 100},
            {type = "item",  name = "iron-plate",        amount = 5}
        },
        results = {
            {type = "item", name = "iron-oxide", amount = 10}
        }
    }:add_unlock("sulfur-processing")
end

--space science
RECIPE("satellite"):remove_unlock("rocket-silo")
data.raw.item.satellite = nil
data.raw.recipe.satellite = nil

ITEM {
    type = "item",
    name = "satellite",
    icon = "__base__/graphics/icons/satellite.png",
    subgroup = "space-related",
    order = "d[rocket-parts]-e[satellite]",
    --inventory_move_sound = "__base__.prototypes.item_sounds.mechanical_inventory_move",
    --pick_sound = "__base__.prototypes.item_sounds.mechanical_inventory_pickup",
    --drop_sound = "__base__.prototypes.item_sounds.mechanical_inventory_move",
    stack_size = 1,
    weight = 1 * tons,
    rocket_launch_products = {{type = "item", name = "space-science-pack", amount = 1000}},
    send_to_orbit_mode = "automated"
}

if data.raw.technology["space-science-pack"].research_trigger then
    data.raw.technology["space-science-pack"].research_trigger.item = "satellite"
end

RECIPE {
    type = "recipe",
    name = "satellite",
    energy_required = 5,
    enabled = false,
    category = "advanced-crafting",
    ingredients = {
        {type = "item",  name = "low-density-structure",  amount = 100},
        {type = "item",  name = "fusion-reactor-mk01",    amount = 1},
        {type = "item",  name = "processing-unit",        amount = 100},
        {type = "fluid", name = "deuterium",              amount = 200},
        {type = "fluid", name = "helium3",                amount = 100},
        {type = "item",  name = "blanket",                amount = 1},
        {type = "item",  name = "divertor",               amount = 3},
        {type = "item",  name = "reinforced-wall-shield", amount = 3},
        {type = "item",  name = "sc-unit",                amount = 4},
    },
    results = {
        {type = "item", name = "satellite", amount = 1}
    },
    requester_paste_multiplier = 1
}:add_unlock("rocket-silo")

RECIPE {
    type = "recipe",
    name = "rocket-part",
    energy_required = 3,
    enabled = false,
    hidden = true,
    category = "rocket-building",
    ingredients = {
        {type = "item", name = "advanced-circuit",      amount = 10},
        {type = "item", name = "low-density-structure", amount = 5},
        {type = "item", name = "super-alloy",           amount = 8},
        {type = "item", name = "rocket-fuel",           amount = 10}
    },
    results = {
        {type = "item", name = "rocket-part", amount = 1}
    },
}
