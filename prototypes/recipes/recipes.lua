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
    category = "chemistry",
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
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-concentrate.png",
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
		{type="fluid", name="sulfur", amount=5},
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
    category = "chemisty", --bobs electrolyzer
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
------------------------------------------------------------------------------
data:extend{
    crushing_molybdenite,
	milling_molybdenite,
	molybdenum_concentrate,
	molybdenum_filtration,
	molybdenum_oxide,
	molybdenum_plate
}
