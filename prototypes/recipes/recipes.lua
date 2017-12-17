local crushing_molybdenite = {
    type = "recipe",
    name = "crushing-molybdenite",
    category = "crusher",
    enabled = "false",
    energy_required = 2,
    ingredients = {
        {type = "item", name = "molybdenum-ore", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-molybdenite", amount = 10},
        {type = "item", name = "stone", amount = 2}
    },
    main_product = "crushed-molybdenite",
    icon = "__pyfusionenergy__/graphics/icons/crush-molybdenite.png",
    subgroup = "py-crusher",
    order = "a"
}

local milling_molybdenite = {
    type = "recipe",
    name = "milling-molybdenite",
    category = "ball-mill",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "crushed-molybdenite", amount = 5}
    },
    results = {
        {type = "item", name = "molybdenite-dust", amount = 10},
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "molybdenite-dust",
    icon = "__pyfusionenergy__/graphics/icons/molybdenite-dust.png",
    subgroup = "py-mill",
    order = "b"
}

local molybdenum_concentrate = {
    type = "recipe",
    name = "molybdenum-concentrate",
    category = "hydrocyclone",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "molybdenite-pulp", amount = 150},
        {type = "fluid", name = "water", amount = 200} --updated-bob nitrogen-dioxide
    },
    results = {
        {type = "item", name = "molybdenum-concentrate", amount = 10},
        {type = "fluid", name = "dirty-water", amount = 150}
    },
    main_product = "molybdenum-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-concentrate-hydrocyclone.png",
    subgroup = "py-fusion-items",
    order = "b"
}

local molybdenum_filtration = {
    type = "recipe",
    name = "molybdenum-filtration",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "molybdenum-pulp", amount = 100},
        {type = "fluid", name = "vacuum", amount = 50},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "item", name = "molybdenum-sulfide", amount = 10}
    },
    main_product = "molybdenum-sulfide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-sulfide.png",
    subgroup = "py-fusion-items",
    order = "c"
}

local molybdenum_oxide = {
    type = "recipe",
    name = "molybdenum-oxide",
    category = "hpf",
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "molybdenum-sulfide", amount = 10}
    },
    results = {
        {type = "item", name = "molybdenum-oxide", amount = 5},
        {type = "item", name = "sulfur", amount = 5}
    },
    main_product = "molybdenum-oxide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-oxide.png",
    subgroup = "py-fusion-items",
    order = "d"
}

local molybdenum_plate = {
    type = "recipe",
    name = "molybdenum-plate",
    category = "chemistry", --bobs electrolyzer
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "molybdenum-oxide", amount = 5} --add hydrogen
    },
    results = {
        {type = "item", name = "molybdenum-plate", amount = 1},
        {type = "fluid", name = "water", amount = 10}
    },
    main_product = "molybdenum-plate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-plate.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local phytoplankton = {
    type = "recipe",
    name = "phytoplankton",
    category = "plankton",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "crushed-iron", amount = 15} --updated-bob crushed-tin
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 10}
    },
    main_product = "phytoplankton",
    icon = "__pyfusionenergy__/graphics/icons/phytoplankton.png",
    subgroup = "py-fusion-fluids",
    order = "e"
}

local xyhiphoe_blood = {
    type = "recipe",
    name = "xyhiphoe-blood",
    category = "xyhiphoe",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "phytoplankton", amount = 30},
        {type = "item", name = "tailings-dust", amount = 50}
    },
    results = {
        {type = "fluid", name = "xyhiphoe-blood", amount = 20},
        {type = "fluid", name = "waste-water", amount = 500}
    },
    main_product = "xyhiphoe-blood",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-blood.png",
    subgroup = "py-fusion-fluids",
    order = "e"
}

local xyhiphoe_hydrocyclone = {
    type = "recipe",
    name = "xyhiphoe-hydrocyclone",
    category = "hydrocyclone",
    enabled = "false",
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "xyhiphoe-blood", amount = 50}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 200}
    },
    main_product = "organic-solvent",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-hydrocyclone.png",
    subgroup = "py-fusion-recipes",
    order = "a"
}

local cobalt_solvent = {
    type = "recipe",
    name = "cobalt-solvent",
    category = "evaporator",
    enabled = "false",
    energy_required = 8,
    ingredients = {
        {type = "fluid", name = "used-solvent", amount = 50}
    },
    results = {
        {type = "item", name = "ash", amount = 10} --updated-bob cobalt-ore
    },
    icon = "__pyfusionenergy__/graphics/icons/used-solvent.png",
    subgroup = "py-fusion-recipes",
    order = "c"
}

local solvent_separation = {
    type = "recipe",
    name = "solvent-separation",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "used-solvent", amount = 100}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "blue-liquor", amount = 50}
    },
    main_product = "organic-solvent",
    icon = "__pyfusionenergy__/graphics/icons/used-solvent.png",
    subgroup = "py-fusion-recipes",
    order = "d"
}

local sodium_chlorate = {
    type = "recipe",
    name = "sodium-chlorate",
    category = "chemistry", --bob electrolyzer
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "steam", amount = 150, temperature = 165},
        {type = "fluid", name = "water-saline", amount = 100} --bob salt
    },
    results = {
        {type = "item", name = "sodium-chlorate", amount = 50}
        --bob hydrogen
    },
    main_product = "sodium-chlorate",
    icon = "__pyfusionenergy__/graphics/icons/sodium-chlorate.png",
    subgroup = "py-fusion-recipes",
    order = "e"
}

local vanadium_oxide = {
    type = "recipe",
    name = "vanadium-oxide",
    category = "evaporator",
    enabled = "false",
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "vpulp-precip", amount = 100}
    },
    results = {
        {type = "item", name = "vanadium-oxide", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 300}
    },
    main_product = "vanadium-oxide",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-oxide.png",
    subgroup = "py-fusion-recipes",
    order = "e"
}

local wastewater_filtration = {
    type = "recipe",
    name = "wastewater-filtration",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 100},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 100}
    },
    icon = "__pycoalprocessing__/graphics/icons/methanol.png",
    subgroup = "py-fusion-recipes",
    order = "f"
}

local wastewater_recovery = {
    type = "recipe",
    name = "wastewater-recovery",
    category = "thickener",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 100},
        {type = "item", name = "pure-sand", amount = 20}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 150}
    },
    main_product = "dirty-water",
    icon = "__pycoalprocessing__/graphics/icons/dirty-water.png",
    subgroup = "py-fusion-recipes",
    order = "g"
}

local super_alloy = {
    type = "recipe",
    name = "super-alloy",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "helium", amount = 10},
        {type = "item", name = "steel-plate", amount = 50}, --bobs nickel-plate
        {type = "item", name = "fuelrod-mk01", amount = 2},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "chromium", amount = 20},
        {type = "item", name = "molybdenum-oxide", amount = 10},
        {type = "item", name = "nexelit-plate", amount = 5},
        {type = "item", name = "vanadium-oxide", amount = 8}
    },
    results = {
        {type = "item", name = "super-alloy", amount = 5}
    },
    icon = "__pyfusionenergy__/graphics/icons/super-alloy.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local crushed_kimberlite = {
    type = "recipe",
    name = "crushed-kimberlite",
    category = "crusher",
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "kimberlite-rock", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-kimberlite", amount = 10},
        {type = "item", name = "stone", amount = 3}
    },
    --main_product= "crushed-kimberlite",
    icon = "__pyfusionenergy__/graphics/icons/crush-kimberlite.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local screening_kimberlite = {
    type = "recipe",
    name = "screening-kimberlite",
    category = "screener",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "item", name = "crushed-kimberlite", amount = 10}
    },
    results = {
        {type = "item", name = "kimberlite-rejects", amount = 7},
        {type = "item", name = "kimberlite-grade2", amount = 5}
    },
    --main_product= "kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/screening-kimberlite.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local kimberlite_rejects_recrushing = {
    type = "recipe",
    name = "kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kimberlite-rejects", amount = 20}
    },
    results = {
        {type = "item", name = "crushed-kimberlite", amount = 5},
        {type = "item", name = "gravel", amount = 1}
    },
    --main_product= "crushed-kimberlite",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-recrush.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local kimberlite_washing = {
    type = "recipe",
    name = "kimberlite-washing",
    category = "washer",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "kimberlite-grade2", amount = 5},
        {type = "fluid", name = "water", amount = 100}
    },
    results = {
        {type = "item", name = "kimberlite-grade3", amount = 5},
        {type = "item", name = "pure-kimberlite-grade2", amount = 1, probability = 0.6},
        {type = "fluid", name = "dirty-water", amount = 100},
        {type = "item", name = "sand", amount = 10}
    },
    --main_product= "kimberlite-grade3",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-washer.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local pure_kimberlite_recrushing = {
    type = "recipe",
    name = "pure-kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "item", name = "pure-kimberlite-grade2", amount = 3}
    },
    results = {
        {type = "item", name = "kimberlite-grade3", amount = 2},
        {type = "item", name = "gravel", amount = 1}
    },
    --main_product= "kimberlite-grade3",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-grade2-recrush.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local screening_kimberlite_residue = {
    type = "recipe",
    name = "screening-kimberlite-residue",
    category = "screener",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "item", name = "kimberlite-residue", amount = 10}
    },
    results = {
        {type = "item", name = "diamond-reject", amount = 8},
        {type = "item", name = "gravel", amount = 2}
    },
    --main_product= "diamond-reject",
    icon = "__pyfusionenergy__/graphics/icons/screening-kimberlite-residue.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local diamond_rejects_recrushing = {
    type = "recipe",
    name = "diamond-rejects-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "diamond-reject", amount = 8}
    },
    results = {
        {type = "item", name = "pure-kimberlite-grade2", amount = 5},
        {type = "item", name = "gravel", amount = 2}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/diamond-reject-recrush.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local diamond_rejects_screening = {
    type = "recipe",
    name = "diamond-rejects-screening",
    category = "screener",
    enabled = "false",
    energy_required = 6,
    ingredients = {
        {type = "item", name = "diamond-reject", amount = 10}
    },
    results = {
        {type = "item", name = "processed-rejects", amount = 16},
        {type = "item", name = "sand", amount = 10}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/screening-diamond-reject.png",
    subgroup = "py-fusion-recipes",
    order = "h"
}

local rejects_separation = {
    type = "recipe",
    name = "rejects-separation",
    category = "solid-separator",
    enabled = "false",
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "processed-rejects", amount = 20}
    },
    results = {
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "chromite-sand", amount = 6},
        {type = "item", name = "diamond", amount = 1, probability = 0.6}
    },
    --main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/rejects-separation.png",
    subgroup = "py-items-class",
    order = "e"
}

local jig_separation = {
    type = "recipe",
    name = "jig-separation",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "jig-concentrate", amount = 300}
    },
    results = {
        {type = "fluid", name = "jig-grade1", amount = 100},
        {type = "fluid", name = "jig-grade2", amount = 100},
        {type = "fluid", name = "jig-grade3", amount = 100}
    },
    --main_product= "jig-grade1",
    icon = "__pyfusionenergy__/graphics/icons/jig1.png",
    subgroup = "py-fusion-recipes",
    order = "j"
}

local greasing_1 = {
    type = "recipe",
    name = "greasing-1",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "jig-grade1", amount = 50},
        {type = "fluid", name = "slacked-lime", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 7},
        {type = "fluid", name = "dirty-water", amount = 100}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-1.png",
    subgroup = "py-fusion-recipes",
    order = "j1"
}

local greasing_2 = {
    type = "recipe",
    name = "greasing-2",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "jig-grade2", amount = 50},
        {type = "fluid", name = "tar", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 5},
        {type = "fluid", name = "dirty-water", amount = 150}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-2.png",
    subgroup = "py-fusion-recipes",
    order = "j2"
}

local greasing_3 = {
    type = "recipe",
    name = "greasing-3",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "jig-grade3", amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 2},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-3.png",
    subgroup = "py-fusion-recipes",
    order = "j3"
}

local washing_crude = {
    type = "recipe",
    name = "washing-crude",
    category = "washer",
    enabled = "false",
    energy_required = 7,
    ingredients = {
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "item", name = "crude-diamond", amount = 20}
    },
    results = {
        {type = "item", name = "washed-diamond", amount = 10},
        {type = "fluid", name = "dirty-water", amount = 120}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/crude-diamond-washer.png",
    subgroup = "py-fusion-recipes",
    order = "k"
}

local class_diamond = {
    type = "recipe",
    name = "class-diamond",
    category = "classifier",
    enabled = "false",
    energy_required = 7,
    ingredients = {
        {type = "item", name = "washed-diamond", amount = 40}
    },
    results = {
        {type = "item", name = "diamond", amount = 10},
        {type = "item", name = "kimberlite-residue", amount = 10}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/class-diamond.png",
    subgroup = "py-fusion-recipes",
    order = "k"
}

local cool_air = {
    type = "recipe",
    name = "cool-air",
    category = "evaporator",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-air", amount = 60},
        {type = "fluid", name = "pressured-air", amount = 20} --bobs liquid nitrogen
    },
    results = {
        {type = "fluid", name = "cold-air", amount = 20}
        --add nitrogen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/cold-air.png",
    subgroup = "py-fusion-recipes",
    order = "k"
}

local liquid_air_distilation = {
    type = "recipe",
    name = "liquid-air-distilation",
    category = "distilator",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "liquid-pure-air", amount = 5}
    },
    results = {
        {type = "fluid", name = "dry-gas-stream", amount = 1},
        {type = "fluid", name = "helium", amount = 1, probability = 0.4}
        --add nitrogen
        --add oxygen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/dry-gas-stream.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local stone_calcination = {
    type = "recipe",
    name = "stone-calcination",
    category = "hpf",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "stone", amount = 40}
    },
    results = {
        {type = "item", name = "calcinates", amount = 10},
        {type = "item", name = "ash", amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 2}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinates.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local calcinate_separation = {
    type = "recipe",
    name = "calcinate-separation",
    category = "solid-separator",
    enabled = "false",
    energy_required = 2,
    ingredients = {
        {type = "item", name = "calcinates", amount = 20}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.4},
        {type = "item", name = "limestone", amount = 1, probability = 0.3},
        {type = "item", name = "sulfur", amount = 1, probability = 0.3}
        --add bobs minerals
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinate-separation.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local bacteria_1 = {
    type = "recipe",
    name = "bacteria-1",
    category = "genlab",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 10},
        {type = "item", name = "lens", amount = 5},
        {type = "item", name = "serine", amount = 15},
        {type = "item", name = "fawogae-substrate", amount = 20},
        {type = "fluid", name = "phytoplankton", amount = 25}
    },
    results = {
        {type = "fluid", name = "bacteria-1", amount = 50}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/bacteria-1.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local serine = {
    type = "recipe",
    name = "serine",
    category = "kmauts",
    enabled = "false",
    energy_required = 30,
    ingredients = {
        {type = "item", name = "kmauts-ration", amount = 1}
    },
    results = {
        {type = "item", name = "serine", amount = 10}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/serine.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local methyl_acrylate = {
    type = "recipe",
    name = "methyl-acrylate",
    category = "methanol",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "methanol", amount = 100}
    },
    results = {
        {type = "item", name = "methyl-acrylate", amount = 1}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/methyl-acrylate.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local kmauts_ration = {
    type = "recipe",
    name = "kmauts-ration",
    category = "crafting",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 2}, --bobs tin plate
        {type = "item", name = "mukmoux-fat", amount = 5},
        {type = "item", name = "organics", amount = 50},
        {type = "item", name = "ralesia", amount = 15}
    },
    results = {
        {type = "item", name = "kmauts-ration", amount = 3}
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/kmauts-ration.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local crush_regolite = {
    type = "recipe",
    name = "crush-regolite",
    category = "crusher",
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "regolite-rock", amount = 10}
    },
    results = {
        {type = "item", name = "crushed-regolite", amount = 5},
        {type = "item", name = "stone", amount = 2}
    },
    main_product = "crushed-regolite",
    icon = "__pyfusionenergy__/graphics/icons/crush-regolite.png",
    subgroup = "py-fusion-recipes",
    order = "a"
}

local recrush_regolite = {
    type = "recipe",
    name = "regolite-recrush",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crushed-regolite", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-regolite", amount = 5},
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "powdered-regolite",
    icon = "__pyfusionenergy__/graphics/icons/regolite-recrush.png",
    subgroup = "py-fusion-recipes",
    order = "a"
}

local milling_regolite = {
    type = "recipe",
    name = "milling-regolite",
    category = "ball-mill",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "powdered-regolite", amount = 5}
    },
    results = {
        {type = "item", name = "regolite-dust", amount = 5},
        {type = "item", name = "sand", amount = 2}
    },
    main_product = "regolite-dust",
    icon = "__pyfusionenergy__/graphics/icons/regolite-dust.png",
    subgroup = "py-fusion-recipes",
    order = "b"
}

local regolite_calcination = {
    type = "recipe",
    name = "regolite-calcination",
    category = "hpf",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "regolite-dust", amount = 20}
    },
    results = {
        {type = "item", name = "calcinates", amount = 12},
        {type = "item", name = "ash", amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 4}
        --add bobs hydrogen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinates.png",
    subgroup = "py-fusion-recipes",
    order = "l"
}

local liquid_petgas = {
    type = "recipe",
    name = "liquid-petgas",
    category = "compressor",
    enabled = "false",
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "petroleum-gas", amount = 5},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-petgas", amount = 5},
        {type = "fluid", name = "steam", amount = 100}
    },
    --main_product= "liquid-petgas",
    icon = "__pyfusionenergy__/graphics/icons/liquid-petgas.png",
    subgroup = "py-fusion-gases",
    order = "a"
}

local liquid_petgas_separation = {
    type = "recipe",
    name = "liquid-petgas-separation",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "liquid-petgas", amount = 20},
        {type = "item", name = "active-carbon", amount = 2}
    },
    results = {
        {type = "fluid", name = "aromatics", amount = 10},
        {type = "fluid", name = "gas-stream", amount = 20}
    },
    main_product = "gas-stream",
    icon = "__pyfusionenergy__/graphics/icons/gas-stream.png",
    subgroup = "py-fusion-gases",
    order = "a"
}

local gas_stream_filtration = {
    type = "recipe",
    name = "gas-stream-filtration",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "gas-stream", amount = 20},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "dry-gas-stream", amount = 3}
    },
    main_product = "dry-gas-stream",
    icon = "__pyfusionenergy__/graphics/icons/dry-gas-stream.png",
    subgroup = "py-fusion-gases",
    order = "a"
}

local liquid_rich_gas_distilation = {
    type = "recipe",
    name = "liquid-rich-gas-distilation",
    category = "distilator",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "liquid-rich-gas", amount = 30}
    },
    results = {
        {type = "fluid", name = "water", amount = 10}, -- bobs pyliquid-nitrogen
        {type = "fluid", name = "helium-rich-gas", amount = 10}
    },
    main_product = "helium-rich-gas",
    icon = "__pyfusionenergy__/graphics/icons/helium-rich-gas.png",
    subgroup = "py-fusion-gases",
    order = "a"
}

local helium = {
    type = "recipe",
    name = "helium",
    category = "gas-separator",
    enabled = "false",
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "purier-helium", amount = 8}
    },
    results = {
        {type = "fluid", name = "water", amount = 10},
        {type = "fluid", name = "helium", amount = 5}
    },
    main_product = "helium",
    icon = "__pyfusionenergy__/graphics/icons/helium.png",
    subgroup = "py-fusion-gases",
    order = "aa"
}

local nexelit_matrix = {
    type = "recipe",
    name = "nexelit-matrix",
    category = "nmf",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "boric-acid", amount = 150},
        {type = "fluid", name = "vacuum", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 4},
        {type = "item", name = "wood", amount = 3} --bobs resin
    },
    results = {
        {type = "item", name = "nexelit-matrix", amount = 4}
    },
    main_product = "nexelit-matrix",
    icon = "__pyfusionenergy__/graphics/icons/nexelit-matrix.png",
    subgroup = "py-fusion-items",
    order = "a"
}

local nbti_alloy = {
    type = "recipe",
    name = "nbti-alloy",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 5},
        {type = "item", name = "steel-plate", amount = 10} --bobs titanium plate
        --add nitrogen
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 2}
    },
    main_product = "nbti-alloy",
    icon = "__pyfusionenergy__/graphics/icons/nbti-alloy.png",
    subgroup = "py-fusion-items",
    order = "d"
}

local nenbit_matrix = {
    type = "recipe",
    name = "nenbit-matrix",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "item", name = "nbti-alloy", amount = 2},
        {type = "item", name = "nexelit-matrix", amount = 10}
    },
    results = {
        {type = "item", name = "nenbit-matrix", amount = 2}
    },
    main_product = "nenbit-matrix",
    icon = "__pyfusionenergy__/graphics/icons/nenbit-matrix.png",
    subgroup = "py-fusion-items",
    order = "d"
}

local ferrite = {
    type = "recipe",
    name = "ferrite",
    category = "hpf",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 20},
        {type = "item", name = "nichrome", amount = 3}
        --add zinc plate
    },
    results = {
        {type = "item", name = "ferrite", amount = 4}
    },
    main_product = "ferrite",
    icon = "__pyfusionenergy__/graphics/icons/ferrite.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local coil_core = {
    type = "recipe",
    name = "coil-core",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "ferrite", amount = 4},
        {type = "item", name = "copper-cable", amount = 40} --bobs gilded copper cable
    },
    results = {
        {type = "item", name = "coil-core", amount = 1}
    },
    main_product = "coil-core",
    icon = "__pyfusionenergy__/graphics/icons/coil-core.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local sc_wire = {
    type = "recipe",
    name = "sc-wire",
    category = "crafting",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 10}, --bobs tin plate
        {type = "item", name = "nenbit-matrix", amount = 1}
        --add glass
    },
    results = {
        {type = "item", name = "sc-wire", amount = 5}
    },
    main_product = "sc-wire",
    icon = "__pyfusionenergy__/graphics/icons/superconducting-wire.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local sc_coil = {
    type = "recipe",
    name = "sc-coil",
    category = "crafting",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sc-wire", amount = 15},
        {type = "item", name = "plastic-bar", amount = 5},
        {type = "item", name = "coil-core", amount = 1}
    },
    results = {
        {type = "item", name = "sc-coil", amount = 1}
    },
    main_product = "sc-coil",
    icon = "__pyfusionenergy__/graphics/icons/superconducting-coil.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local magnetic_core = {
    type = "recipe",
    name = "magnetic-core",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 25,
    ingredients = {
        {type = "item", name = "sc-coil", amount = 1},
        {type = "item", name = "cladded-core", amount = 3},
        {type = "item", name = "kevlar", amount = 10}
    },
    results = {
        {type = "item", name = "magnetic-core", amount = 1}
    },
    main_product = "magnetic-core",
    icon = "__pyfusionenergy__/graphics/icons/magnetic-core.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local deposited_core = {
    type = "recipe",
    name = "deposited-core",
    category = "gas-separator",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "magnetic-core", amount = 1},
        {type = "item", name = "vanadium-oxide", amount = 10}
    },
    results = {
        {type = "item", name = "deposited-core", amount = 1}
    },
    --main_product= "magnetic-core",
    icon = "__pyfusionenergy__/graphics/icons/deposited-vcore.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local sc_unit = {
    type = "recipe",
    name = "sc-unit",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 20,
    ingredients = {
        {type = "item", name = "molybdenum-plate", amount = 5},
        {type = "item", name = "deposited-core", amount = 1},
        {type = "item", name = "advanced-circuit", amount = 1}
        --add liquid nitrogen
    },
    results = {
        {type = "item", name = "sc-unit", amount = 1}
    },
    main_product = "sc-unit",
    icon = "__pyfusionenergy__/graphics/icons/magnetic-unit.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local d2o_distilation = {
    type = "recipe",
    name = "d2o-distilation",
    category = "distilator",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "heavy-water", amount = 60}
    },
    results = {
        {type = "fluid", name = "deuterium", amount = 4}
        --add oxygen
    },
    --main_product= "sc-unit",
    icon = "__pyfusionenergy__/graphics/icons/deuterium.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local b2o3_milling = {
    type = "recipe",
    name = "b2o3-milling",
    category = "ball-mill",
    enabled = "false",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "boron-trioxide", amount = 20}
    },
    results = {
        {type = "item", name = "b2o3-dust", amount = 40}
    },
    main_product = "b2o3-dust",
    icon = "__pyfusionenergy__/graphics/icons/boron-trioxide-dust.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local boron_mixture = {
    type = "recipe",
    name = "boron-mixture",
    category = "hpf",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "b2o3-dust", amount = 15},
        {type = "fluid", name = "helium", amount = 15}
        --add bobs aluminum
    },
    results = {
        {type = "item", name = "boron-mixture", amount = 5}
    },
    main_product = "boron-mixture",
    icon = "__pyfusionenergy__/graphics/icons/boron-mixture.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local boron = {
    type = "recipe",
    name = "boron",
    category = "mixer",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "boron-mixture", amount = 3},
        {type = "fluid", name = "refsyngas", amount = 300}
        --add bobs HCL
    },
    results = {
        {type = "item", name = "boron", amount = 2},
        {type = "fluid", name = "diborane", amount = 50}
    },
    main_product = "boron",
    icon = "__pyfusionenergy__/graphics/icons/boron.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local boron_carbide = {
    type = "recipe",
    name = "boron-carbide",
    category = "hpf",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "boron-trioxide", amount = 2},
        {type = "item", name = "coke", amount = 7} --bobs carbon
    },
    results = {
        {type = "item", name = "boron-carbide", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 3}
    },
    main_product = "boron-carbide",
    icon = "__pyfusionenergy__/graphics/icons/boron-carbide.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local blanket_chassi = {
    type = "recipe",
    name = "blanket-chassi",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "super-alloy", amount = 10},
        {type = "item", name = "ferrite", amount = 10},
        {type = "item", name = "molybdenum-oxide", amount = 20},
        {type = "item", name = "vanadium-oxide", amount = 5},
        {type = "item", name = "copper-plate", amount = 25},
        {type = "fluid", name = "helium", amount = 20}
    },
    results = {
        {type = "item", name = "blanket-chassi", amount = 1}
    },
    main_product = "blanket-chassi",
    icon = "__pyfusionenergy__/graphics/icons/blanket-chassi.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local blanket = {
    type = "recipe",
    name = "blanket",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 40,
    ingredients = {
        {type = "item", name = "blanket-chassi", amount = 2},
        {type = "item", name = "boron-carbide", amount = 10},
        {type = "item", name = "diamond", amount = 20}
        --add bobs lithium and lead
    },
    results = {
        {type = "item", name = "blanket", amount = 1}
    },
    main_product = "blanket",
    icon = "__pyfusionenergy__/graphics/icons/blanket.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local divertor = {
    type = "recipe",
    name = "divertor",
    category = "crafting",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = "diamond", amount = 10},
        {type = "item", name = "super-alloy", amount = 10}
        --add bobs tungstein
    },
    results = {
        {type = "item", name = "divertor", amount = 2}
    },
    main_product = "divertor",
    icon = "__pyfusionenergy__/graphics/icons/divertor.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local wall_shield = {
    type = "recipe",
    name = "wall-shield",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 7,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = "diamond", amount = 5},
        {type = "item", name = "super-alloy", amount = 6},
        {type = "item", name = "boron-carbide", amount = 10},
        {type = "item", name = "ferrite", amount = 15}
    },
    results = {
        {type = "item", name = "wall-shield", amount = 5}
    },
    main_product = "wall-shield",
    icon = "__pyfusionenergy__/graphics/icons/wall-shield.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local rwall_shield = {
    type = "recipe",
    name = "reinforced-wall-shield",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 7,
    ingredients = {
        {type = "item", name = "wall-shield", amount = 1},
        {type = "item", name = "diamond", amount = 1},
        {type = "fluid", name = "refsyngas", amount = 100}
    },
    results = {
        {type = "item", name = "reinforced-wall-shield", amount = 1}
    },
    main_product = "reinforced-wall-shield",
    icon = "__pyfusionenergy__/graphics/icons/rwall-shield.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local deuterium_fusion = {
    type = "recipe",
    name = "deuterium-fusion",
    category = "fusion-01",
    enabled = "false",
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium", amount = 50},
        {type = "fluid", name = "pressured-water", amount = 4000},
        {type = "item", name = "blanket", amount = 2},
        {type = "item", name = "divertor", amount = 5},
        {type = "item", name = "wall-shield", amount = 10},
        {type = "item", name = "sc-unit", amount = 20},
        {type = "fluid", name = "liquid-helium", amount = 30},
        {type = "fluid", name = "water", amount = 2000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 1000},
        {type = "fluid", name = "helium", amount = 150},
        {type = "fluid", name = "tritium", amount = 20},
        {type = "fluid", name = "helium3", amount = 30},
        {type = "fluid", name = "steam", amount = 2000}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/fusion-deuterium.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local dt_he3 = {
    type = "recipe",
    name = "dt-he3",
    category = "fusion-01",
    enabled = "false",
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium", amount = 40},
        {type = "fluid", name = "helium3", amount = 90},
        {type = "fluid", name = "pressured-water", amount = 4000},
        {type = "item", name = "blanket", amount = 2},
        {type = "item", name = "divertor", amount = 5},
        {type = "item", name = "reinforced-wall-shield", amount = 10},
        {type = "item", name = "sc-unit", amount = 20},
        {type = "fluid", name = "liquid-helium", amount = 35},
        {type = "fluid", name = "water", amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 3000},
        {type = "fluid", name = "helium", amount = 175},
        {type = "fluid", name = "proton", amount = 15},
        {type = "fluid", name = "steam", amount = 5000}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/fusion-he3.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local dt_fusion = {
    type = "recipe",
    name = "dt-fusion",
    category = "fusion-01",
    enabled = "false",
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium", amount = 40},
        {type = "fluid", name = "tritium", amount = 20},
        {type = "fluid", name = "pressured-water", amount = 4500},
        {type = "item", name = "blanket", amount = 2},
        {type = "item", name = "divertor", amount = 5},
        {type = "item", name = "reinforced-wall-shield", amount = 10},
        {type = "item", name = "sc-unit", amount = 20},
        {type = "fluid", name = "liquid-helium", amount = 30},
        {type = "fluid", name = "water", amount = 3500}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 2000},
        {type = "fluid", name = "helium", amount = 200},
        {type = "fluid", name = "tritium", amount = 5},
        {type = "fluid", name = "steam", amount = 3500}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/fusion-dt.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local b_h = {
    type = "recipe",
    name = "b-h",
    category = "fusion-02",
    enabled = "false",
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "proton", amount = 45},
        {type = "fluid", name = "pressured-water", amount = 5000},
        {type = "item", name = "blanket", amount = 1},
        {type = "item", name = "divertor", amount = 8},
        {type = "item", name = "wall-shield", amount = 5},
        {type = "item", name = "boron", amount = 30},
        {type = "item", name = "production-science-pack", amount = 5},
        {type = "fluid", name = "liquid-helium", amount = 100},
        {type = "fluid", name = "water", amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4500, temperature = 4000},
        {type = "fluid", name = "helium", amount = 500},
        {type = "fluid", name = "steam", amount = 5000}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/fusion-bh.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local steam_exchange1 = {
    type = "recipe",
    name = "steam-exchange1",
    category = "heat-exchanger",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 1000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 1000},
        {type = "fluid", name = "steam", amount = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/steam-exchange.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local steam_exchange2 = {
    type = "recipe",
    name = "steam-exchange2",
    category = "heat-exchanger",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 2000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 2000},
        {type = "fluid", name = "steam", amount = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/steam-exchange2.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local steam_exchange3 = {
    type = "recipe",
    name = "steam-exchange3",
    category = "heat-exchanger",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 3000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 3000},
        {type = "fluid", name = "steam", amount = 250}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/steam-exchange3.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local steam_exchange4 = {
    type = "recipe",
    name = "steam-exchange4",
    category = "heat-exchanger",
    enabled = "false",
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 4000},
        {type = "fluid", name = "water", amount = 400}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 4000},
        {type = "fluid", name = "steam", amount = 400}
    },
    --main_product= "blanket",
    icon = "__pyfusionenergy__/graphics/icons/steam-exchange4.png",
    subgroup = "py-fusion-items",
    order = "e"
}

local lead_container = {
    type = "recipe",
    name = "lead-container",
    category = "crafting",
    enabled = "false",
    energy_required = 7,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 20}, --bob lead plate
        {type = "item", name = "nbfe-alloy", amount = 10}
    },
    results = {
        {type = "item", name = "lead-container", amount = 1}
    },
    main_product = "lead-container",
    icon = "__pyfusionenergy__/graphics/icons/lead-container.png",
    subgroup = "py-fusion-items",
    order = "f"
}

local science_coating = {
    type = "recipe",
    name = "science-coating",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "item", name = "diamond", amount = 10},
        {type = "item", name = "pipe", amount = 1}, --pyindustry niobium-pipe
        {type = "item", name = "steel-plate", amount = 10} --bobs titanium plate
    },
    results = {
        {type = "item", name = "science-coating", amount = 1}
    },
    main_product = "science-coating",
    icon = "__pyfusionenergy__/graphics/icons/science-coating.png",
    subgroup = "py-fusion-items",
    order = "f"
}

local coated_container = {
    type = "recipe",
    name = "coated-container",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "lead-container", amount = 2},
        {type = "item", name = "science-coating", amount = 1}
    },
    results = {
        {type = "item", name = "coated-container", amount = 1}
    },
    main_product = "coated-container",
    icon = "__pyfusionenergy__/graphics/icons/coated-container.png",
    subgroup = "py-fusion-items",
    order = "f"
}

local nuclear_sample = {
    type = "recipe",
    name = "nuclear-sample",
    category = "mixer",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "uranium-ore", amount = 50},
        {type = "item", name = "science-pack-1", amount = 1},
        {type = "fluid", name = "boric-acid", amount = 100},
        {type = "fluid", name = "industrial-solvent", amount = 100},
        {type = "fluid", name = "aromatics", amount = 50}
    },
    results = {
        {type = "item", name = "nuclear-sample", amount = 1}
    },
    main_product = "nuclear-sample",
    icon = "__pyfusionenergy__/graphics/icons/nuclear-sample.png",
    subgroup = "py-fusion-items",
    order = "f"
}

local control_unit = {
    type = "recipe",
    name = "control-unit",
    category = "crafting",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "advanced-circuit", amount = 10},
        {type = "item", name = "nexelit-cartridge", amount = 1},
        {type = "item", name = "nenbit-matrix", amount = 4},
        {type = "item", name = "fuelrod-mk01", amount = 2},
        {type = "item", name = "iron-plate", amount = 4}
    },
    results = {
        {type = "item", name = "control-unit", amount = 2}
    },
    main_product = "control-unit",
    icon = "__pyfusionenergy__/graphics/icons/control-unit.png",
    subgroup = "py-fusion-items",
    order = "f"
}

local productionscience_pack = {
    type = "recipe",
    name = "production-science-pack",
    category = "advanced-crafting",
    enabled = "false",
    energy_required = 4,
    ingredients = {
        {type = "item", name = "control-unit", amount = 1},
        {type = "item", name = "coated-container", amount = 1},
        {type = "item", name = "nuclear-sample", amount = 2}
    },
    results = {
        {type = "item", name = "production-science-pack", amount = 3}
    },
    icon = "__pyfusionenergy__/graphics/icons/production-science-pack.png",
    subgroup = "py-fusion-items",
    order = "x"
}

local agzn_alloy = {
    type = "recipe",
    name = "agzn-alloy",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stone", amount = 10}, --bobs zinc plate
        {type = "item", name = "iron-plate", amount = 20}, --bobs silver plate
        {type = "fluid", name = "refsyngas", amount = 200}
    },
    results = {
        {type = "item", name = "agzn-alloy", amount = 2}
    },
    main_product = "agzn-alloy",
    icon = "__pyfusionenergy__/graphics/icons/agzn-alloy.png",
    subgroup = "py-fusion-items",
    order = "d"
}

local silver_foam = {
    type = "recipe",
    name = "silver-foam",
    category = "rectisol",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "item", name = "agzn-alloy", amount = 1},
        {type = "item", name = "limestone", amount = 30},
        {type = "fluid", name = "acetylene", amount = 200},
        {type = "fluid", name = "water", amount = 200}, --bobs hydrogen-chloride
        {type = "fluid", name = "hydrogen-peroxide", amount = 100}
    },
    results = {
        {type = "item", name = "silver-foam", amount = 1}
    },
    main_product = "silver-foam",
    icon = "__pyfusionenergy__/graphics/icons/silver-foam.png",
    subgroup = "py-fusion-items",
    order = "dd"
}

local he3_separation = {
    type = "recipe",
    name = "he3-separation",
    category = "gas-separator",
    enabled = "false",
    energy_required = 8,
    ingredients = {
        {type = "item", name = "silver-foam", amount = 1},
        {type = "fluid", name = "helium", amount = 10},
        {type = "item", name = "niobium-plate", amount = 4}
    },
    results = {
        {type = "fluid", name = "helium3", amount = 8},
        {type = "fluid", name = "helium", amount = 2}
    },
    main_product = "helium3",
    icon = "__pyfusionenergy__/graphics/icons/helium3.png",
    subgroup = "py-fusion-items",
    order = "dd"
}

data:extend {
    crushing_molybdenite,
    milling_molybdenite,
    molybdenum_concentrate,
    molybdenum_filtration,
    molybdenum_oxide,
    molybdenum_plate,
    phytoplankton,
    xyhiphoe_blood,
    xyhiphoe_hydrocyclone,
    cobalt_solvent,
    solvent_separation,
    sodium_chlorate,
    vanadium_oxide,
    wastewater_filtration,
    wastewater_recovery,
    super_alloy,
    crushed_kimberlite,
    screening_kimberlite,
    kimberlite_rejects_recrushing,
    kimberlite_washing,
    pure_kimberlite_recrushing,
    screening_kimberlite_residue,
    diamond_rejects_recrushing,
    diamond_rejects_screening,
    rejects_separation,
    jig_separation,
    greasing_1,
    greasing_2,
    greasing_3,
    washing_crude,
    class_diamond,
    cool_air,
    liquid_air_distilation,
    stone_calcination,
    calcinate_separation,
    bacteria_1,
    serine,
    methyl_acrylate,
    kmauts_ration,
    crush_regolite,
    recrush_regolite,
    milling_regolite,
    regolite_calcination,
    liquid_petgas,
    liquid_petgas_separation,
    gas_stream_filtration,
    liquid_rich_gas_distilation,
    helium,
    nexelit_matrix,
    nbti_alloy,
    nenbit_matrix,
    sc_wire,
    ferrite,
    coil_core,
    sc_coil,
    magnetic_core,
    deposited_core,
    sc_unit,
    d2o_distilation,
    b2o3_milling,
    boron_mixture,
    boron,
    boron_carbide,
    blanket_chassi,
    blanket,
    deuterium_fusion,
    dt_fusion,
    divertor,
    wall_shield,
    rwall_shield,
    steam_exchange1,
    steam_exchange2,
    steam_exchange3,
    steam_exchange4,
    lead_container,
    science_coating,
    coated_container,
    nuclear_sample,
    control_unit,
    productionscience_pack,
    dt_he3,
    b_h,
    agzn_alloy,
    silver_foam,
    he3_separation
}

local crusher = data.raw.technology["crusher"].effects
crusher[#crusher + 1] = {
    type = "unlock-recipe",
    recipe = "crushing-molybdenite"
}
crusher[#crusher + 1] = {
    type = "unlock-recipe",
    recipe = "milling-molybdenite"
}
