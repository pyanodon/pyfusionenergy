-------------------------------------------------------------------------------
--[[VPULP1]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local vpulp1= {
    type = "recipe",
    name = "vpulp1",
    category = "agitator",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="blue-liquor", amount=100},
		{type="fluid", name="steam", amount=300, temperature=165},
    },
    results=
    {
        {type="fluid", name="vpulp1", amount=100},
    },
    main_product= "vpulp1",
    icon = "__pyfusionenergy__/graphics/icons/agitation-vpulp1.png",
    subgroup = "py-fusion-fluids",
    order = "j",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "vpulp1",
    icon = "__pyfusionenergy__/graphics/icons/vpulp1.png",
    default_temperature = 15,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 0.870, g = 0, b = 1},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, vpulp1})
