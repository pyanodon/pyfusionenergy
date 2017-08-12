-------------------------------------------------------------------------------
--[[MOLYBDENITE PULP]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local molybdenite_pulp= {
    type = "recipe",
    name = "molybdenite-pulp",
    category = "agitator",
    enabled = "false",
    energy_required = 8,
    ingredients ={
        {type="fluid", name="water", amount=300},
        {type="item", name="molybdenite-dust", amount=20},
    },
    results=
    {
        {type="fluid", name="molybdenite-pulp", amount=100},
    },
    main_product= "molybdenite-pulp",
    icon = "__pyfusionenergy__/graphics/icons/molybdenite-pulp.png",
    subgroup = "py-fusion-fluids",
    order = "a",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "molybdenite-pulp",
    icon = "__pyfusionenergy__/graphics/icons/molybdenite-pulp.png",
    default_temperature = 15,
    base_color = {r = 0.317, g = 0.615, b = 0.85},
    flow_color = {r = 0.317, g = 0.615, b = 0.85},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "a"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, molybdenite_pulp})
