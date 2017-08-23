-------------------------------------------------------------------------------
--[[ORGANIC-VANADATE]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local organic_vanadate= {
    type = "recipe",
    name = "organic-vanadate",
    category = "mixer",
    enabled = "false",
    energy_required = 15,
    ingredients ={
        {type="fluid", name="vanadates", amount=200},
		{type="fluid", name="oleochemicals", amount=200},
		{type="fluid", name="vanadium-concentrate", amount=100},
    },
    results=
    {
        {type="fluid", name="organic-vanadate", amount=20},
		{type="fluid", name="vanadium-solution", amount=100},
    },
    main_product= "organic-vanadate",
    icon = "__pyfusionenergy__/graphics/icons/mixer-organic-vanadate.png",
    subgroup = "py-fusion-fluids",
    order = "o",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "organic-vanadate",
    icon = "__pyfusionenergy__/graphics/icons/organic-vanadate.png",
    default_temperature = 15,
    base_color = {r = 0.627, g = 0.376, b = 0.125},
    flow_color = {r = 0.627, g = 0.376, b = 0.125},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "o"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, organic_vanadate})
