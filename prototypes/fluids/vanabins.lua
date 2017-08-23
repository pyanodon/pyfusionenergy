-------------------------------------------------------------------------------
--[[VANABINS]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local vanabins= {
    type = "recipe",
    name = "vanabins",
    category = "quenching-tower",
    enabled = "false",
    energy_required = 4,
    ingredients ={
        {type="fluid", name="xyhiphoe-blood", amount=20},
        {type="fluid", name="sulfuric-acid", amount=200},
    },
    results=
    {
        {type="fluid", name="vanabins", amount=100},
    },
    main_product= "vanabins",
    icon = "__pyfusionenergy__/graphics/icons/vanabins.png",
    subgroup = "py-fusion-fluids",
    order = "h",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "vanabins",
    icon = "__pyfusionenergy__/graphics/icons/vanabins.png",
    default_temperature = 15,
    base_color = {r = 0.447, g = 0.109, b = 1},
    flow_color = {r = 0.447, g = 0.109, b = 1},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "h"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, vanabins})
