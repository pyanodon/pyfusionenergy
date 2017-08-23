-------------------------------------------------------------------------------
--[[PREGNANT SOLUTION]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local pregnant_solution= {
    type = "recipe",
    name = "pregnant-solution",
    category = "hydrocyclone",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="acid-strip-solution", amount=150},
		{type="fluid", name="organic-vanadate", amount=40},		
    },
    results=
    {
        {type="fluid", name="pregnant-solution", amount=300},
    },
    main_product= "pregnant-solution",
    icon = "__pyfusionenergy__/graphics/icons/pregnant-solution-hydrocyclone.png",
    subgroup = "py-fusion-fluids",
    order = "s",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "pregnant-solution",
    icon = "__pyfusionenergy__/graphics/icons/pregnant-solution.png",
    default_temperature = 15,
    base_color = {r = 0.878, g = 0.725, b = 0.282},
    flow_color = {r = 0.878, g = 0.725, b = 0.282},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "s"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, pregnant_solution})
