-------------------------------------------------------------------------------
--[[VPULP2]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local vpulp2= {
    type = "recipe",
    name = "vpulp2",
    category = "agitator",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="fluid", name="vpulp1", amount=200},
		{type="item", name="crushed-iron", amount=50},
    },
    results=
    {
        {type="fluid", name="vpulp2", amount=100},
    },
    main_product= "vpulp2",
    icon = "__pyfusionenergy__/graphics/icons/agitation-vpulp2.png",
    subgroup = "py-fusion-fluids",
    order = "k",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "vpulp2",
    icon = "__pyfusionenergy__/graphics/icons/vpulp2.png",
    default_temperature = 15,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 0.870, g = 0, b = 1},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "k"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, vpulp2})
