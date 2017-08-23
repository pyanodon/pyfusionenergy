-------------------------------------------------------------------------------
--[[VPULP4]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local vpulp4= {
    type = "recipe",
    name = "vpulp4",
    category = "agitator",
    enabled = "false",
    energy_required = 5,
    ingredients ={
        {type="fluid", name="pregnant-solution", amount=150},
		{type="item", name="sodium-chlorate", amount=100},
    },
    results=
    {
        {type="fluid", name="vpulp4", amount=100},
		{type="item", name="vanadium-oxide", amount=1, probability=0.2},
    },
    main_product= "vpulp4",
    icon = "__pyfusionenergy__/graphics/icons/agitation-vpulp4.png",
    subgroup = "py-fusion-fluids",
    order = "l",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "vpulp4",
    icon = "__pyfusionenergy__/graphics/icons/vpulp4.png",
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
data:extend({fluid, vpulp4})
