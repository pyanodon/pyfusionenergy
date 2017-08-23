-------------------------------------------------------------------------------
--[[Recipes without new item results]]--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--CRUSHING MOLYDBENITE
local crushing_molybdenite ={
    type = "recipe",
    name = "crushing-molybdenite",
    category = "crusher",
    enabled = "false",
    energy_required = 2,
    ingredients ={
        {type="item", name="molybdenum-ore", amount=5},
    },
    results={
        {type="item", name="crushed-molybdenite", amount=10},
        {type="item", name="stone", amount=2},
    },
    main_product= "crushed-molybdenite",
    icon = "__pyfusionenergy__/graphics/icons/crush-molybdenite.png",
	subgroup = "py-crusher",
    order = "a",
}
-------------------------------------------------------------------------------
--MILLING MOLYDBENITE
local milling_molybdenite ={
    type = "recipe",
    name = "milling-molybdenite",
    category = "ball-mill",
    enabled = "false",
    energy_required = 4,
    ingredients ={
        {type="item", name="crushed-molybdenite", amount=5},
    },
    results={
        {type="item", name="molybdenite-dust", amount=10},
        {type="item", name="gravel", amount=1},
    },
    main_product= "molybdenite-dust",
    icon = "__pyfusionenergy__/graphics/icons/molybdenite-dust.png",
	subgroup = "py-mill",
    order = "b",
}
-------------------------------------------------------------------------------
--MOLYBDENUM CONCENTRATE
local molybdenum_concentrate ={
    type = "recipe",
    name = "molybdenum-concentrate",
    category = "hydrocyclone",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="fluid", name="molybdenite-pulp", amount=150,},
		{type="fluid", name="water", amount=200}, --updated-bob nitrogen-dioxide
    },
    results={
        {type="item", name="molybdenum-concentrate", amount=10},
        {type="fluid", name="dirty-water", amount=150},
    },
    main_product= "molybdenum-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-concentrate-hydrocyclone.png",
	subgroup = "py-fusion-items",
    order = "b",
}
-------------------------------------------------------------------------------
--MOLYBDENUM FILTRATION
local molybdenum_filtration ={
    type = "recipe",
    name = "molybdenum-filtration",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 2,
    ingredients ={
        {type="fluid", name="molybdenum-pulp", amount=100,},
		{type="fluid", name="vacuum", amount=50},
        {type="item", name="filtration-media", amount=1},
    },
    results={
        {type="item", name="molybdenum-sulfide", amount=10},
    },
    main_product= "molybdenum-sulfide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-sulfide.png",
	subgroup = "py-fusion-items",
    order = "c",
}
-------------------------------------------------------------------------------
--MOLYBDENUM OXIDE
local molybdenum_oxide ={
    type = "recipe",
    name = "molybdenum-oxide",
    category = "hpf",
    enabled = "false",
    energy_required = 3,
    ingredients ={
        {type="item", name="molybdenum-sulfide", amount=10},
    },
    results={
        {type="item", name="molybdenum-oxide", amount=5},
		{type="item", name="sulfur", amount=5},
    },
    main_product= "molybdenum-oxide",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-oxide.png",
	subgroup = "py-fusion-items",
    order = "d",
}
-------------------------------------------------------------------------------
--MOLYBDENUM PLATE
local molybdenum_plate ={
    type = "recipe",
    name = "molybdenum-plate",
    category = "chemistry", --bobs electrolyzer
    enabled = "false",
    energy_required = 3,
    ingredients ={
        {type="item", name="molybdenum-oxide", amount=5}, --add hydrogen
    },
    results={
        {type="item", name="molybdenum-plate", amount=1},
		{type="fluid", name="water", amount=10},
    },
    main_product= "molybdenum-plate",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-plate.png",
	subgroup = "py-fusion-items",
    order = "e",
}

-------------------------------------------------------------------------------
--PHYTOPLANKTON
local phytoplankton ={
    type = "recipe",
    name = "phytoplankton",
    category = "plankton",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="fluid", name="water", amount=500},
		{type="item", name="crushed-iron", amount=15}, --updated-bob crushed-tin
    },
    results={
		{type="fluid", name="phytoplankton", amount=10},
    },
    main_product= "phytoplankton",
    icon = "__pyfusionenergy__/graphics/icons/phytoplankton.png",
	subgroup = "py-fusion-fluids",
    order = "e",
}

-------------------------------------------------------------------------------
--XYHIPHOE-BLOOD
local xyhiphoe_blood ={
    type = "recipe",
    name = "xyhiphoe-blood",
    category = "xyhiphoe",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="fluid", name="pressured-water", amount=500},
        {type="fluid", name="phytoplankton", amount=30},
		{type="item", name="tailings-dust", amount=200},
    },
    results={
		{type="fluid", name="xyhiphoe-blood", amount=20},
		{type="fluid", name="waste-water", amount=500},
    },
    main_product= "xyhiphoe-blood",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-blood.png",
	subgroup = "py-fusion-fluids",
    order = "e",
}
-------------------------------------------------------------------------------
--XYHIPHOE-HYDROCYLCONE
local xyhiphoe_hydrocyclone ={
    type = "recipe",
    name = "xyhiphoe-hydrocyclone",
    category = "hydrocyclone",
    enabled = "false",
    energy_required = 30,
    ingredients ={
        {type="fluid", name="pressured-water", amount=500},
        {type="fluid", name="xyhiphoe-blood", amount=50},
    },
    results={
		{type="fluid", name="organic-solvent", amount=200},
    },
    main_product= "organic-solvent",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-hydrocyclone.png",
	subgroup = "py-fusion-recipes",
    order = "a",
}
-------------------------------------------------------------------------------
--COBALT from USED SOLVENT
local cobalt_solvent ={
    type = "recipe",
    name = "cobalt-solvent",
    category = "evaporator",
    enabled = "false",
    energy_required = 8,
    ingredients ={
        {type="fluid", name="used-solvent", amount=50},
    },
    results={
		{type="item", name="ash", amount=10}, --updated-bob cobalt-ore
    },
    icon = "__pyfusionenergy__/graphics/icons/used-solvent.png",
	subgroup = "py-fusion-recipes",
    order = "c",
}
-------------------------------------------------------------------------------
--USED SOLVENT Separation
local solvent_separation ={
    type = "recipe",
    name = "solvent-separation",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="used-solvent", amount=100},
    },
    results={
		{type="fluid", name="organic-solvent", amount=100},
		{type="fluid", name="blue-liquor", amount=50},
    },
    main_product= "organic-solvent",
    icon = "__pyfusionenergy__/graphics/icons/used-solvent.png",
	subgroup = "py-fusion-recipes",
    order = "d",
}
-------------------------------------------------------------------------------
--SODIUM CHLORATE
local sodium_chlorate ={
    type = "recipe",
    name = "sodium-chlorate",
    category = "chemistry", --bob electrolyzer
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="fluid", name="steam", amount=150, temperature=165},
		{type="fluid", name="water-saline", amount=100}, --bob salt
    },
    results={
		{type="item", name="sodium-chlorate", amount=50},
		--bob hydrogen
    },
    main_product= "sodium-chlorate",
    icon = "__pyfusionenergy__/graphics/icons/sodium-chlorate.png",
	subgroup = "py-fusion-recipes",
    order = "e",
}
-------------------------------------------------------------------------------
--VANADIUM OXIDE
local vanadium_oxide ={
    type = "recipe",
    name = "vanadium-oxide",
    category = "evaporator",
    enabled = "false",
    energy_required = 20,
    ingredients ={
        {type="fluid", name="vpulp-precip", amount=100},
    },
    results={
		{type="item", name="vanadium-oxide", amount=5},
		{type="fluid", name="dirty-water", amount=300},
    },
    main_product= "vanadium-oxide",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-oxide.png",
	subgroup = "py-fusion-recipes",
    order = "e",
}
-------------------------------------------------------------------------------
--WASTE WATER FILTRATION
local wastewater_filtration ={
    type = "recipe",
    name = "wastewater-filtration",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="fluid", name="waste-water", amount=100},
		{type="item", name="filtration-media", amount=1},
    },
    results={
		{type="fluid", name="methanol", amount=100},
    },
    icon = "__pycoalprocessing__/graphics/icons/methanol.png",
	subgroup = "py-fusion-recipes",
    order = "f",
}
-------------------------------------------------------------------------------
--WASTE WATER RECOVERY
local wastewater_recovery ={
    type = "recipe",
    name = "wastewater-recovery",
    category = "thickener",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="waste-water", amount=100},
		{type="item", name="pure-sand", amount=20},
    },
    results={
		{type="fluid", name="dirty-water", amount=150},
    },
    main_product= "dirty-water",
    icon = "__pycoalprocessing__/graphics/icons/dirty-water.png",
	subgroup = "py-fusion-recipes",
    order = "g",
}
------------------------------------------------------------------------------
data:extend{
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
	wastewater_recovery
}

-------------------------------------------------------------------------------
--[[Additional Tech unlocks]]--
-------------------------------------------------------------------------------
local crusher = data.raw.technology["crusher"].effects
crusher[#crusher + 1] = {
    type = "unlock-recipe",
    recipe = "crushing-molybdenite"
}
crusher[#crusher + 1] = {
    type = "unlock-recipe",
    recipe = "milling-molybdenite"
}
