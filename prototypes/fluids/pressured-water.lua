-------------------------------------------------------------------------------
--[[PRESSURED WATER]]--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--[[recipes]]--
local pressured_water= {
    type = "recipe",
    name = "pressured-water",
    category = "vacuum",
    enabled = "false",
    energy_required = 2.5,
    ingredients ={
        {type="fluid", name="water", amount=250},
    },
    results=
    {
        {type="fluid", name="pressured-water", amount=200},
    },
    main_product= "pressured-water",
    icon = "__pyfusionenergy__/graphics/icons/pressured-water.png",
    subgroup = "py-fusion-fluids",
    order = "f",
}

--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "pressured-water",
    icon = "__pyfusionenergy__/graphics/icons/pressured-water.png",
    default_temperature = 15,
    base_color = {r = 0.031, g = 0.372, b = 0.423},
    flow_color = {r = 0.031, g = 0.372, b = 0.423},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "f"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, pressured_water})
