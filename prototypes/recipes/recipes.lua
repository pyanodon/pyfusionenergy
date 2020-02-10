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
        {type = "item", name = "stone", amount = 2}
    },
    main_product = "crushed-molybdenite",
    icon = "__pyfusionenergygraphics__/graphics/icons/crush-molybdenite.png",
	icon_size = 32,
    subgroup = "py-crusher",
    order = "a"
}:add_unlock("crusher")

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
        {type = "item", name = "gravel", amount = 1}
    },
    main_product = "molybdenite-dust",
}:add_unlock("crusher")

RECIPE {
    type = "recipe",
    name = "molybdenum-concentrate",
    category = "hydrocyclone",
    enabled = false,
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
        {type = "fluid", name = "molybdenum-pulp", amount = 100},
        {type = "fluid", name = "vacuum", amount = 50},
        {type = "item", name = "filtration-media", amount = 1}
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
        {type = "item", name = "sulfur", amount = 1}
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
        {type = "item", name = "molybdenum-plate", amount = 3},
        {type = "fluid", name = "water", amount = 10}
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
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "iron-ore", amount = 8}
    },
    results = {
        {type = "fluid", name = "phytoplankton", amount = 10}
    },
    main_product = "phytoplankton",
}

RECIPE {
    type = "recipe",
    name = "xyhiphoe-blood",
    category = "xyhiphoe",
    enabled = false,
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "phytoplankton", amount = 30},
        {type = "item", name = "tailings-dust", amount = 30}
    },
    results = {
        {type = "fluid", name = "xyhiphoe-blood", amount = 20},
        {type = "fluid", name = "waste-water", amount = 500}
    },
    main_product = "xyhiphoe-blood",
}

RECIPE {
    type = "recipe",
    name = "xyhiphoe-hydrocyclone",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 30,
    ingredients = {
        {type = "fluid", name = "pressured-water", amount = 500},
        {type = "fluid", name = "xyhiphoe-blood", amount = 50}
    },
    results = {
        {type = "fluid", name = "organic-solvent", amount = 200}
    },
    main_product = "organic-solvent",
}

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
        {type = "fluid", name = "blue-liquor", amount = 50}
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
        {type = "fluid", name = "steam", amount = 150, temperature = 165},
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
        {type = "item", name = "vanadium-oxide", amount = 15},
        {type = "fluid", name = "dirty-water", amount = 300}
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
        {type = "fluid", name = "waste-water", amount = 100},
        {type = "item", name = "filtration-media", amount = 1}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 100}
    },
}

RECIPE {
    type = "recipe",
    name = "wastewater-recovery",
    category = "thickener",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 100},
        {type = "item", name = "pure-sand", amount = 20}
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 150}
    },
    main_product = "dirty-water",
}

RECIPE {
    type = "recipe",
    name = "super-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "helium", amount = 10},
        {type = "item", name = "steel-plate", amount = 50},
        {type = "item", name = "fuelrod-mk01", amount = 2},
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "sand-casting", amount = 2},
        {type = "item", name = "chromium", amount = 20},
        {type = "item", name = "molybdenum-oxide", amount = 5},
        {type = "item", name = "nexelit-plate", amount = 5},
        {type = "item", name = "vanadium-oxide", amount = 8}
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
        {type = "item", name = "stone", amount = 3}
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
        {type = "item", name = "kimberlite-grade2", amount = 5}
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
        {type = "item", name = "gravel", amount = 1}
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
        {type = "item", name = "gravel", amount = 1}
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
        {type = "item", name = "gravel", amount = 2}
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
        {type = "item", name = "gravel", amount = 2, probability = 0.5}
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
        {type = "item", name = "sand", amount = 10}
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
        {type = "item", name = "limestone", amount = 3},
        {type = "item", name = "chromite-sand", amount = 6},
        {type = "item", name = "diamond", amount = 1, probability = 0.6}
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
        {type = "fluid", name = "jig-grade1", amount = 50},
        {type = "fluid", name = "slacked-lime", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 7},
        {type = "fluid", name = "dirty-water", amount = 100}
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
        {type = "fluid", name = "tar", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 5},
        {type = "fluid", name = "dirty-water", amount = 150}
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
        {type = "fluid", name = "jig-grade3", amount = 50},
        {type = "fluid", name = "organic-solvent", amount = 100},
        {type = "fluid", name = "grease", amount = 25}
    },
    results = {
        {type = "item", name = "crude-diamond", amount = 2},
        {type = "fluid", name = "dirty-water", amount = 200}
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
        {type = "item", name = "crude-diamond", amount = 20}
    },
    results = {
        {type = "item", name = "washed-diamond", amount = 10},
        {type = "fluid", name = "dirty-water", amount = 120}
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
        {type = "item", name = "diamond", amount = 20},
        {type = "item", name = "kimberlite-residue", amount = 10}
    },
    --main_product= "crude",
    icon = "__pyfusionenergygraphics__/graphics/icons/class-diamond.png",
	icon_size = 32,
    subgroup = "py-fusion-recipes",
    order = "k"
}

if mods["pyrawores"] then

RECIPE {
    type = "recipe",
    name = "cool-air-1",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-air", amount = 120},
        {type = "fluid", name = "liquid-nitrogen", amount = 45} -- liquid nitrogen
    },
    results = {
        {type = "fluid", name = "cold-air", amount = 45},
        {type = "fluid", name = "nitrogen", amount = 450}
    },
    main_product= "cold-air",
}:add_unlock("helium-processing")

else

RECIPE {
    type = "recipe",
    name = "cool-air",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "purified-air", amount = 120},
        {type = "fluid", name = "pressured-air", amount = 90}
    },
    results = {
        {type = "fluid", name = "cold-air", amount = 45}
    },
    main_product= "cold-air",
}:add_unlock("helium-processing")

end

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
        {type = "fluid", name = "helium", amount = 1, probability = 0.4}
    },
    main_product= "dry-gas-stream",
}

RECIPE {
    type = "recipe",
    name = "stone-calcination",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "stone", amount = 40}
    },
    results = {
        {type = "item", name = "calcinates", amount = 10},
        {type = "item", name = "ash", amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 2}
    },
    main_product= "calcinates",
}
RECIPE {
    type = "recipe",
    name = "gravel-calcination",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "gravel", amount = 50}
    },
    results = {
        {type = "item", name = "calcinates", amount = 10},
        {type = "item", name = "ash", amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 2}
    },
    main_product= "calcinates",
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
        {type = "item", name = "iron-ore", amount = 1, probability = 0.4},
        {type = "item", name = "copper-ore", amount = 1, probability = 0.4},
        {type = "item", name = "limestone", amount = 1, probability = 0.3},
        {type = "item", name = "sulfur", amount = 1, probability = 0.3}
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
        {type = "item", name = "nexelit-plate", amount = 10},
        {type = "item", name = "lens", amount = 5},
        {type = "item", name = "serine", amount = 15},
        {type = "item", name = "fawogae-substrate", amount = 20},
        {type = "fluid", name = "phytoplankton", amount = 25}
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
        {type = "item", name = "iron-plate", amount = 2},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "methanol", amount = 100}
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
        {type = "item", name = "iron-plate", amount = 2}, --bobs tin plate
        {type = "item", name = "mukmoux-fat", amount = 5},
        {type = "item", name = "organics", amount = 50},
        {type = "item", name = "ralesia", amount = 15}
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
        {type = "item", name = "stone", amount = 2}
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
        {type = "item", name = "gravel", amount = 1}
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
        {type = "item", name = "sand", amount = 2}
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
        {type = "item", name = "calcinates", amount = 12},
        {type = "item", name = "ash", amount = 3},
        {type = "fluid", name = "dry-gas-stream", amount = 4}
        --add bobs hydrogen
    },
    main_product= "calcinates",
}

RECIPE {
    type = "recipe",
    name = "liquid-petgas",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "petroleum-gas", amount = 5},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-petgas", amount = 5},
        {type = "fluid", name = "steam", amount = 100, temperature = 60}
    },
    main_product= "liquid-petgas",
}

RECIPE {
    type = "recipe",
    name = "liquid-petgas-separation",
    category = "fluid-separator",
    enabled = false,
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
}

RECIPE {
    type = "recipe",
    name = "gas-stream-filtration",
    category = "carbonfilter",
    enabled = false,
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
        {type = "fluid", name = "water", amount = 10}, -- bobs pyliquid-nitrogen
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
        {type = "fluid", name = "water", amount = 10},
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
        {type = "fluid", name = "boric-acid", amount = 150},
        {type = "fluid", name = "vacuum", amount = 100},
        {type = "item", name = "nexelit-plate", amount = 4},
        {type = "item", name = "treated-wood", amount = 3}
    },
    results = {
        {type = "item", name = "nexelit-matrix", amount = 4}
    },
}

RECIPE {
    type = "recipe",
    name = "nbti-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 5},
        {type = "item", name = "steel-plate", amount = 10} --bobs titanium plate
        --add nitrogen
    },
    results = {
        {type = "item", name = "nbti-alloy", amount = 2}
    },
}

RECIPE {
    type = "recipe",
    name = "nenbit-matrix",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "item", name = "nbti-alloy", amount = 2},
        {type = "item", name = "nexelit-matrix", amount = 10}
    },
    results = {
        {type = "item", name = "nenbit-matrix", amount = 2}
    },
}

RECIPE {
    type = "recipe",
    name = "ferrite",
    category = "hpf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "iron-oxide", amount = 20},
        {type = "item", name = "nichrome", amount = 3}
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
        {type = "item", name = "ferrite", amount = 4},
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
        {type = "item", name = "iron-plate", amount = 10}, --bobs tin plate
        {type = "item", name = "nenbit-matrix", amount = 1}
        --add glass
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
        {type = "item", name = "sc-wire", amount = 10},
        {type = "item", name = "plastic-bar", amount = 10},
        {type = "item", name = "coil-core", amount = 1}
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
        {type = "item", name = "sc-coil", amount = 1},
        {type = "item", name = "cladded-core", amount = 3},
        {type = "item", name = "kevlar", amount = 8}
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
        {type = "item", name = "magnetic-core", amount = 1},
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
    energy_required = 30,
    ingredients = {
        {type = "item", name = "molybdenum-plate", amount = 10},
        {type = "item", name = "deposited-core", amount = 2},
        {type = "item", name = "advanced-circuit", amount = 2}
        --add liquid nitrogen
    },
    results = {
        {type = "item", name = "sc-unit", amount = 3}
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
    main_product= "deuterium",
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
}

RECIPE {
    type = "recipe",
    name = "boron-mixture",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "b2o3-dust", amount = 15},
        {type = "fluid", name = "helium", amount = 15}
        --add bobs aluminum
    },
    results = {
        {type = "item", name = "boron-mixture", amount = 5}
    },
}

RECIPE {
    type = "recipe",
    name = "boron",
    category = "mixer",
    enabled = false,
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
}

RECIPE {
    type = "recipe",
    name = "boron-carbide",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "boron-trioxide", amount = 2},
        {type = "item", name = "coke", amount = 7} --bobs carbon
    },
    results = {
        {type = "item", name = "boron-carbide", amount = 3},
        {type = "fluid", name = "carbon-dioxide", amount = 30}
    },
    main_product = "boron-carbide",
}

RECIPE {
    type = "recipe",
    name = "blanket-chassi",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "super-alloy", amount = 6},
        {type = "item", name = "ferrite", amount = 10},
        {type = "item", name = "molybdenum-oxide", amount = 5},
        {type = "item", name = "vanadium-oxide", amount = 5},
        {type = "item", name = "copper-plate", amount = 25},
        {type = "fluid", name = "helium", amount = 20}
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
        {type = "item", name = "boron-carbide", amount = 10},
        {type = "item", name = "diamond", amount = 20}
        --add bobs lithium and lead
    },
    results = {
        {type = "item", name = "blanket", amount = 2}
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
        {type = "item", name = "diamond", amount = 10},
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
        {type = "item", name = "steel-plate", amount = 20},
        {type = "item", name = "diamond", amount = 5},
        {type = "item", name = "super-alloy", amount = 6},
        {type = "item", name = "boron-carbide", amount = 10},
        {type = "item", name = "ferrite", amount = 15}
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
        {type = "item", name = "wall-shield", amount = 1},
        {type = "item", name = "diamond", amount = 1},
        {type = "fluid", name = "refsyngas", amount = 100}
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
        {type = "fluid", name = "deuterium", amount = 100},
        {type = "fluid", name = "pressured-water", amount = 4000},
        {type = "item", name = "blanket", amount = 1},
        {type = "item", name = "divertor", amount = 2},
        {type = "item", name = "wall-shield", amount = 5},
        {type = "item", name = "sc-unit", amount = 4},
        {type = "fluid", name = "liquid-helium", amount = 30},
        {type = "fluid", name = "water", amount = 2000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 1000},
        {type = "fluid", name = "helium", amount = 150},
        {type = "fluid", name = "tritium", amount = 20},
        {type = "fluid", name = "helium3", amount = 30},
        {type = "fluid", name = "steam", amount = 2000, temperature = 60},
        {type = "item", name = "blanket", amount = 1, probability = 0.5},
        {type = "item", name = "divertor", amount = 1, probability = 0.5},
        {type = "item", name = "wall-shield", amount = 3, probability = 0.5},
        {type = "item", name = "sc-unit", amount = 3, probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-deuterium.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "dt-he3",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium", amount = 200},
        {type = "fluid", name = "helium3", amount = 90},
        {type = "fluid", name = "pressured-water", amount = 4000},
        {type = "item", name = "blanket", amount = 1},
        {type = "item", name = "divertor", amount = 3},
        {type = "item", name = "reinforced-wall-shield", amount = 5},
        {type = "item", name = "sc-unit", amount = 4},
        {type = "fluid", name = "liquid-helium", amount = 35},
        {type = "fluid", name = "water", amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 3000},
        {type = "fluid", name = "helium", amount = 175},
        {type = "fluid", name = "proton", amount = 15},
        {type = "fluid", name = "steam", amount = 5000, temperature = 60},
        {type = "item", name = "blanket", amount = 1, probability = 0.5},
        {type = "item", name = "divertor", amount = 1, probability = 0.5},
        {type = "item", name = "reinforced-wall-shield", amount = 3, probability = 0.5},
        {type = "item", name = "sc-unit", amount = 3, probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-he3.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "dt-fusion",
    category = "fusion-01",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "deuterium", amount = 80},
        {type = "fluid", name = "tritium", amount = 20},
        {type = "fluid", name = "pressured-water", amount = 4500},
        {type = "item", name = "blanket", amount = 2},
        {type = "item", name = "divertor", amount = 2},
        {type = "item", name = "reinforced-wall-shield", amount = 5},
        {type = "item", name = "sc-unit", amount = 4},
        {type = "fluid", name = "liquid-helium", amount = 30},
        {type = "fluid", name = "water", amount = 3500}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4000, temperature = 2000},
        {type = "fluid", name = "helium", amount = 200},
        {type = "fluid", name = "tritium", amount = 5},
        {type = "fluid", name = "steam", amount = 3500, temperature = 60},
        {type = "item", name = "blanket", amount = 1, probability = 0.5},
        {type = "item", name = "divertor", amount = 1, probability = 0.5},
        {type = "item", name = "reinforced-wall-shield", amount = 3, probability = 0.5},
        {type = "item", name = "sc-unit", amount = 3, probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-dt.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "b-h",
    category = "fusion-02",
    enabled = false,
    energy_required = 40,
    ingredients = {
        {type = "fluid", name = "proton", amount = 15},
        {type = "fluid", name = "pressured-water", amount = 5000},
        {type = "item", name = "blanket", amount = 1},
        {type = "item", name = "divertor", amount = 8},
        {type = "item", name = "wall-shield", amount = 5},
        {type = "item", name = "boron", amount = 15},
        {type = "item", name = "production-science-pack", amount = 5},
        {type = "fluid", name = "liquid-helium", amount = 100},
        {type = "fluid", name = "water", amount = 5000}
    },
    results = {
        {type = "fluid", name = "critical-steam", amount = 4500, temperature = 4000},
        {type = "fluid", name = "helium", amount = 500},
        {type = "fluid", name = "steam", amount = 5000, temperature = 60},
        {type = "item", name = "blanket", amount = 1, probability = 0.6},
        {type = "item", name = "divertor", amount = 2, probability = 0.6},
        {type = "item", name = "wall-shield", amount = 3, probability = 0.5},
    },
    --main_product= "blanket",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-bh.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}

RECIPE {
    type = "recipe",
    name = "steam-exchange1",
    category = "heat-exchanger",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 1000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 1000},
        {type = "fluid", name = "steam", amount = 250, temperature = 60}
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
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 2000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 2000},
        {type = "fluid", name = "steam", amount = 250, temperature = 60}
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
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 3000},
        {type = "fluid", name = "water", amount = 250}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 3000},
        {type = "fluid", name = "steam", amount = 250, temperature = 60}
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
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "critical-steam", amount = 500, temperature = 4000},
        {type = "fluid", name = "water", amount = 400}
    },
    results = {
        {type = "fluid", name = "pressured-steam", amount = 1000, temperature = 4000},
        {type = "fluid", name = "steam", amount = 400, temperature = 60}
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
        {type = "item", name = "diamond", amount = 10},
        {type = "item", name = "pipe", amount = 1}, --pyindustry niobium-pipe
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
        {type = "item", name = "lead-container", amount = 2},
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
        {type = "item", name = "uranium-ore", amount = 50},
        {type = "item", name = "automation-science-pack", amount = 1},
        {type = "fluid", name = "boric-acid", amount = 100},
        {type = "fluid", name = "industrial-solvent", amount = 100},
        {type = "fluid", name = "aromatics", amount = 50}
    },
    results = {
        {type = "item", name = "nuclear-sample", amount = 1}
    },
}

RECIPE {
    type = "recipe",
    name = "control-unit",
    category = "crafting",
    enabled = false,
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
}

RECIPE {
    type = "recipe",
    name = "production-science-pack",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "control-unit", amount = 1},
        {type = "item", name = "coated-container", amount = 1},
        {type = "item", name = "nuclear-sample", amount = 2}
    },
    results = {
        {type = "item", name = "production-science-pack", amount = 3}
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "x"
}

RECIPE {
    type = "recipe",
    name = "agzn-alloy",
    category = "advanced-foundry",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stone", amount = 10}, --bobs zinc plate
        {type = "item", name = "iron-plate", amount = 20}, --bobs silver plate
        {type = "fluid", name = "refsyngas", amount = 200}
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
        {type = "item", name = "agzn-alloy", amount = 1},
        {type = "item", name = "limestone", amount = 30},
        {type = "fluid", name = "acetylene", amount = 200},
        {type = "fluid", name = "water", amount = 200}, --bobs hydrogen-chloride
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
        {type = "item", name = "silver-foam", amount = 1},
        {type = "fluid", name = "helium", amount = 10},
        {type = "item", name = "niobium-plate", amount = 4}
    },
    results = {
        {type = "fluid", name = "helium3", amount = 8},
        {type = "fluid", name = "helium", amount = 2}
    },
    main_product = "helium3",
}
RECIPE {
    type = "recipe",
    name = "mining-molybdenum",
    category = "ground-borer",
    enabled = false,
    energy_required = 1.2,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 100},
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "item", name = "drill-head", amount = 3}
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
        {type = "fluid", name = "steam", amount = 1000, temperature = 60},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "fuelrod-mk01", amount = 1},
    },
    results = {
        {type = "fluid", name = "steam", amount = 1000, temperature = 500},
    },
    main_product= "steam",
    icon = "__pyfusionenergygraphics__/graphics/icons/steam-heating.png",
	icon_size = 32,
    subgroup = "py-fusion-items",
    order = "e"
}:add_unlock("coal-processing-3")

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
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "log8",
    category = "nursery",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "fluid", name = "waste-water", amount = 200},
        {type = "fluid", name = "carbon-dioxide", amount = 250}
    },
    results = {
        {type = "item", name = "log", amount = 3}
    },
    icon = "__pyfusionenergygraphics__/graphics/icons/log8.png",
    icon_size = 32,
    subgroup = "py-items",
    order = "c9-1"
}:add_unlock("vanadium-processing")

RECIPE {
    type = "recipe",
    name = "acidgas-2",
    category = "compressor",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "flue-gas", amount = 2000},
        {type = "fluid", name = "water", amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "acidgas", amount = 30},
        {type = "fluid", name = "steam", amount = 600, temperature = 60}
    },
    main_product = "acidgas",
}:add_unlock("regolite-mining")
