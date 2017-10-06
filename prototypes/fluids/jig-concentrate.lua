-------------------------------------------------------------------------------
--[[JIG CONCENTRATE]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local jig_diamond_concentrate= {
    type = "recipe",
    name = "jig-diamond-concentrate",
    category = "jig",
    enabled = "false",
    energy_required = 20,
    ingredients ={
        {type="fluid", name="diamond-concentrate", amount=200},
		{type="fluid", name="water", amount=500},
    },
    results=
    {
        {type="fluid", name="jig-concentrate", amount=100},
		{type="fluid", name="dirty-water", amount=350},
    },
    main_product= "jig-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/jig-diamond-concentrate.png",
    subgroup = "py-fusion-fluids",
    order = "j",
}

local jig_diamond_tailings= {
    type = "recipe",
    name = "jig-diamond-tailings",
    category = "jig",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="diamond-tailings", amount=250},
		{type="fluid", name="water", amount=500},
    },
    results=
    {
        {type="fluid", name="jig-concentrate", amount=50},
		{type="fluid", name="dirty-water", amount=350},
    },
    main_product= "jig-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/jig-diamond-tailings.png",
    subgroup = "py-fusion-fluids",
    order = "j",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "jig-concentrate",
    icon = "__pyfusionenergy__/graphics/icons/jig-concentrate.png",
    default_temperature = 15,
    base_color = {r = 0.478, g = 0.8, b = 0.949},
    flow_color = {r = 0.478, g = 0.8, b = 0.949},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, jig_diamond_concentrate, jig_diamond_tailings})
