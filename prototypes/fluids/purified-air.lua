-------------------------------------------------------------------------------
--[[PURIFIED-AIR]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local purified_air= {
    type = "recipe",
    name = "purified-air",
    category = "carbonfilter",
    enabled = "false",
    energy_required = 1,
    ingredients ={
		{type="fluid", name="pressured-air", amount=20},
		{type="item", name="active-carbon", amount=2},
    },
    results=
    {
        {type="fluid", name="purified-air", amount=10},
    },
    main_product= "purified-air",
    icon = "__pyfusionenergy__/graphics/icons/purified-air.png",
    subgroup = "py-fusion-gases",
    order = "a",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "purified-air",
    icon = "__pyfusionenergy__/graphics/icons/purified-air.png",
    default_temperature = 15,
    base_color = {r = 0.270, g = 0.772, b = 1.0},
    flow_color = {r = 0.270, g = 0.772, b = 1.0},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, purified_air})
