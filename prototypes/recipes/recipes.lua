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
        {type="item", name="molybdenum-ore", amount=10},
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
		{type="item", name="tailings-dust", amount=100},
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
-------------------------------------------------------------------------------
--SUPER ALLOY
local super_alloy ={
    type = "recipe",
    name = "super-alloy",
    category = "advanced-foundry",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="carbon-dioxide", amount=100}, --helium
		{type="item", name="steel-plate", amount=50}, --bobs nickel-plate
        {type="item", name="fuelrod-mk01", amount=2},
        {type="item", name="limestone", amount=3},
        {type="item", name="sand-casting", amount=2},
		{type="item", name="chromium", amount=20},
		{type="item", name="molybdenum-oxide", amount=25},
		{type="item", name="nexelit-plate", amount=5},
		{type="item", name="vanadium-oxide", amount=10},
    },
    results={
		{type="item", name="super-alloy", amount=2},
    },
    icon = "__pyfusionenergy__/graphics/icons/super-alloy.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--CRUSHED KIMBERLITE
local crushed_kimberlite ={
    type = "recipe",
    name = "crushed-kimberlite",
    category = "crusher",
    enabled = "false",
    energy_required = 3,
    ingredients ={
        {type="item", name="kimberlite-rock", amount=10},
    },
    results={
		{type="item", name="crushed-kimberlite", amount=10},
		{type="item", name="stone", amount=3},
    },
	--main_product= "crushed-kimberlite",
    icon = "__pyfusionenergy__/graphics/icons/crush-kimberlite.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--KIMBERLITE SCREENING
local screening_kimberlite ={
    type = "recipe",
    name = "screening-kimberlite",
    category = "screener",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="item", name="crushed-kimberlite", amount=10},
    },
    results={
		{type="item", name="kimberlite-rejects", amount=7},
		{type="item", name="kimberlite-grade2", amount=5},
    },
	--main_product= "kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/screening-kimberlite.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--KIMBERLITE REJECTS RECRUSHING
local kimberlite_rejects_recrushing ={
    type = "recipe",
    name = "kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="item", name="kimberlite-rejects", amount=20},
    },
    results={
		{type="item", name="crushed-kimberlite", amount=5},
		{type="item", name="gravel", amount=1},
    },
	--main_product= "crushed-kimberlite",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-recrush.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
--KIMBERLITE WASHING
local kimberlite_washing ={
    type = "recipe",
    name = "kimberlite-washing",
    category = "washer",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="item", name="kimberlite-grade2", amount=5},
		{type="fluid", name="water", amount=100},
    },
    results={
		{type="item", name="kimberlite-grade3", amount=5},
		{type="item", name="pure-kimberlite-grade2", amount=1, probability=0.6},
		{type="fluid", name="dirty-water", amount=100},
		{type="item", name="sand", amount=10},
    },
	--main_product= "kimberlite-grade3",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-washer.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--PURE KIMBERLITE 2 RECRUSHING
local pure_kimberlite_recrushing ={
    type = "recipe",
    name = "pure-kimberlite-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="item", name="pure-kimberlite-grade2", amount=3},
    },
    results={
		{type="item", name="kimberlite-grade3", amount=2},
		{type="item", name="gravel", amount=1},
    },
	--main_product= "kimberlite-grade3",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-grade2-recrush.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--KIMBERLITE RESIDUES SCREENING
local screening_kimberlite_residue ={
    type = "recipe",
    name = "screening-kimberlite-residue",
    category = "screener",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="item", name="kimberlite-residue", amount=10},
    },
    results={
		{type="item", name="diamond-reject", amount=8},
		{type="item", name="gravel", amount=2},
    },
	--main_product= "diamond-reject",
    icon = "__pyfusionenergy__/graphics/icons/screening-kimberlite-residue.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--DIAMOND REJECTS RECRUSHING
local diamond_rejects_recrushing ={
    type = "recipe",
    name = "diamond-rejects-recrushing",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="item", name="diamond-reject", amount=8},
    },
    results={
		{type="item", name="pure-kimberlite-grade2", amount=5},
		{type="item", name="gravel", amount=2},
    },
	--main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/diamond-reject-recrush.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--DIAMOND REJECTS SCREENING
local diamond_rejects_screening ={
    type = "recipe",
    name = "diamond-rejects-screening",
    category = "screener",
    enabled = "false",
    energy_required = 6,
    ingredients ={
        {type="item", name="diamond-reject", amount=10},
    },
    results={
		{type="item", name="processed-rejects", amount=16},
		{type="item", name="sand", amount=10},
    },
	--main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/screening-diamond-reject.png",
	subgroup = "py-fusion-recipes",
    order = "h",
}
-------------------------------------------------------------------------------
--REJECTS SEPARATION
local rejects_separation ={
    type = "recipe",
    name = "rejects-separation",
    category = "solid-separator",
    enabled = "false",
    energy_required = 1.5,
    ingredients ={
        {type="item", name="processed-rejects", amount=20},
    },
    results={
		{type="item", name="limestone", amount=3},
		{type="item", name="chromite-sand", amount=6},
		{type="item", name="diamond", amount=1, probability=0.6},
    },
	--main_product= "pure-kimberlite-grade2",
    icon = "__pyfusionenergy__/graphics/icons/rejects-separation.png",
    subgroup = "py-items-class",
    order = "e",
}
-------------------------------------------------------------------------------
--JIG SEPARATION
local jig_separation= {
    type = "recipe",
    name = "jig-separation",
    category = "fluid-separator",
    enabled = "false",
    energy_required = 20,
    ingredients ={
        {type="fluid", name="jig-concentrate", amount=300},
    },
    results=
    {
        {type="fluid", name="jig-grade1", amount=100},
        {type="fluid", name="jig-grade2", amount=100},
        {type="fluid", name="jig-grade3", amount=100},
    },
    --main_product= "jig-grade1",
    icon = "__pyfusionenergy__/graphics/icons/jig1.png",
    subgroup = "py-fusion-recipes",
    order = "j",
}
-------------------------------------------------------------------------------
--GREASING 1
local greasing_1= {
    type = "recipe",
    name = "greasing-1",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="jig-grade1", amount=50},
		{type="fluid", name="slacked-lime", amount=100},
		{type="fluid", name="grease", amount=25},
    },
    results=
    {
        {type="item", name="crude-diamond", amount=7},
        {type="fluid", name="dirty-water", amount=100},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-1.png",
    subgroup = "py-fusion-recipes",
    order = "j1",
}
-------------------------------------------------------------------------------
--GREASING 2
local greasing_2= {
    type = "recipe",
    name = "greasing-2",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="jig-grade2", amount=50},
		{type="fluid", name="tar", amount=100},
		{type="fluid", name="grease", amount=25},
    },
    results=
    {
        {type="item", name="crude-diamond", amount=5},
        {type="fluid", name="dirty-water", amount=150},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-2.png",
    subgroup = "py-fusion-recipes",
    order = "j2",
}
-------------------------------------------------------------------------------
--GREASING 3
local greasing_3= {
    type = "recipe",
    name = "greasing-3",
    category = "grease",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="jig-grade3", amount=50},
		{type="fluid", name="organic-solvent", amount=100},
		{type="fluid", name="grease", amount=25},
    },
    results=
    {
        {type="item", name="crude-diamond", amount=2},
        {type="fluid", name="dirty-water", amount=200},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/greasing-3.png",
    subgroup = "py-fusion-recipes",
    order = "j3",
}
-------------------------------------------------------------------------------
--WASH CRUDE DIAMONDS
local washing_crude= {
    type = "recipe",
    name = "washing-crude",
    category = "washer",
    enabled = "false",
    energy_required = 7,
    ingredients ={
        {type="fluid", name="sulfuric-acid", amount=100},
		{type="item", name="crude-diamond", amount=20},
    },
    results=
    {
        {type="item", name="washed-diamond", amount=10},
        {type="fluid", name="dirty-water", amount=120},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/crude-diamond-washer.png",
    subgroup = "py-fusion-recipes",
    order = "k",
}
-------------------------------------------------------------------------------
--CLASSIFY WASHED DIAMONDS
local class_diamond= {
    type = "recipe",
    name = "class-diamond",
    category = "classifier",
    enabled = "false",
    energy_required = 7,
    ingredients ={
		{type="item", name="washed-diamond", amount=40},
    },
    results=
    {
        {type="item", name="diamond", amount=10},
        {type="item", name="kimberlite-residue", amount=10},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/class-diamond.png",
    subgroup = "py-fusion-recipes",
    order = "k",
}
-------------------------------------------------------------------------------
--COOLING AIR
local cool_air= {
    type = "recipe",
    name = "cool-air",
    category = "evaporator",
    enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="fluid", name="purified-air", amount=60},
		{type="fluid", name="pressured-air", amount=20}, --bobs liquid nitrogen
    },
    results=
    {
        {type="fluid", name="cold-air", amount=20},
		--add nitrogen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/cold-air.png",
    subgroup = "py-fusion-recipes",
    order = "k",
}
-------------------------------------------------------------------------------
--LIQUID AIR DISTILATION
local liquid_air_distilation= {
    type = "recipe",
    name = "liquid-air-distilation",
    category = "distilator",
    enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="fluid", name="liquid-pure-air", amount=5},
    },
    results=
    {
        {type="fluid", name="dry-gas-stream", amount=1},
		{type="fluid", name="carbon-dioxide", amount=1},
		--add nitrogen
		--add oxygen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/dry-gas-stream.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--CALCINATE STONES
local stone_calcination= {
    type = "recipe",
    name = "stone-calcination",
    category = "hpf",
    enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="stone", amount=40},
    },
    results=
    {
        {type="item", name="calcinates", amount=10},
		{type="item", name="ash", amount=3},
		{type="fluid", name="dry-gas-stream", amount=2},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinates.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--CALCINATE SEPARATION
local calcinate_separation= {
    type = "recipe",
    name = "calcinate-separation",
    category = "solid-separator",
    enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="calcinates", amount=20},
    },
    results=
    {
        {type="item", name="iron-ore", amount=1, probability=0.4},
		{type="item", name="copper-ore", amount=1, probability=0.4},
		{type="item", name="limestone", amount=1, probability=0.3},
		{type="item", name="sulfur", amount=1, probability=0.3},
		--add bobs minerals
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinate-separation.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--IMPROVED ALIEN BACTERIA-1
local bacteria_1= {
    type = "recipe",
    name = "bacteria-1",
    category = "genlab",
    enabled = "false",
    energy_required = 15,
    ingredients ={
		{type="item", name="nexelit-plate", amount=10},
		{type="item", name="lens", amount=5},
		{type="item", name="serine", amount=15},
		{type="item", name="fawogae-substrate", amount=20},
		{type="fluid", name="phytoplankton", amount=25},
    },
    results=
    {
        {type="fluid", name="bacteria-1", amount=50},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/bacteria-1.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--SERINE
local serine= {
    type = "recipe",
    name = "serine",
    category = "kmauts",
    enabled = "false",
    energy_required = 30,
    ingredients ={
		{type="item", name="kmauts-ration", amount=2},
    },
    results=
    {
        {type="item", name="serine", amount=10},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/serine.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--METHYL ACRYLATE
local methyl_acrylate= {
    type = "recipe",
    name = "methyl-acrylate",
    category = "methanol",
    enabled = "false",
    energy_required = 5,
    ingredients =
	{
	    {type="item", name="iron-plate", amount=2},
		{type="fluid", name="sulfuric-acid", amount=100},
		{type="fluid", name="methanol", amount=100},
    },
    results=
    {
        {type="item", name="methyl-acrylate", amount=1},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/methyl-acrylate.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--KMAUTS RATION
local kmauts_ration= {
    type = "recipe",
    name = "kmauts-ration",
    category = "crafting",
    enabled = "false",
    energy_required = 5,
    ingredients =
	{
	    {type="item", name="iron-plate", amount=2}, --bobs tin plate
		{type="item", name="mukmoux-fat", amount=5},
		{type="item", name="organics", amount=100},
		{type="item", name="ralesia", amount=15},
    },
    results=
    {
        {type="item", name="kmauts-ration", amount=1},
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/kmauts-ration.png",
    subgroup = "py-fusion-recipes",
    order = "l",
}
-------------------------------------------------------------------------------
--CRUSH REGOLITE
local crush_regolite= {
    type = "recipe",
    name = "crush-regolite",
    category = "crusher",
    enabled = "false",
    energy_required = 3,
    ingredients =
	{
	    {type="item", name="regolite-rock", amount=10},
    },
    results=
    {
        {type="item", name="crushed-regolite", amount=5},
        {type="item", name="stone", amount=2},
    },
    main_product= "crushed-regolite",
    icon = "__pyfusionenergy__/graphics/icons/crush-regolite.png",
	subgroup = "py-fusion-recipes",
    order = "a",
}
-------------------------------------------------------------------------------
--RECRUSH REGOLITE
local recrush_regolite= {
    type = "recipe",
    name = "regolite-recrush",
    category = "secondary-crusher",
    enabled = "false",
    energy_required = 5,
    ingredients =
	{
	    {type="item", name="crushed-regolite", amount=5},
    },
    results=
    {
        {type="item", name="powdered-regolite", amount=5},
        {type="item", name="gravel", amount=1},
    },
    main_product= "powdered-regolite",
    icon = "__pyfusionenergy__/graphics/icons/regolite-recrush.png",
	subgroup = "py-fusion-recipes",
    order = "a",
}
-------------------------------------------------------------------------------
--MILLING REGOLITE
local milling_regolite ={
    type = "recipe",
    name = "milling-regolite",
    category = "ball-mill",
    enabled = "false",
    energy_required = 4,
    ingredients ={
        {type="item", name="powdered-regolite", amount=5},
    },
    results={
        {type="item", name="regolite-dust", amount=5},
        {type="item", name="sand", amount=2},
    },
    main_product= "regolite-dust",
    icon = "__pyfusionenergy__/graphics/icons/regolite-dust.png",
	subgroup = "py-fusion-recipes",
    order = "b",
}
-------------------------------------------------------------------------------
--CALCINATE REGOLITES
local regolite_calcination= {
    type = "recipe",
    name = "regolite-calcination",
    category = "hpf",
    enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="regolite-dust", amount=20},
    },
    results=
    {
        {type="item", name="calcinates", amount=12},
		{type="item", name="ash", amount=3},
		{type="fluid", name="dry-gas-stream", amount=3},
		--add bobs hydrogen
    },
    --main_product= "crude",
    icon = "__pyfusionenergy__/graphics/icons/calcinates.png",
    subgroup = "py-fusion-recipes",
    order = "l",
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
	regolite_calcination
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
