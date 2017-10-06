-------------------------------------------------------------------------------
--[[GREASE]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local grease= {
    type = "recipe",
    name = "grease",
    category = "fts-reactor",
    enabled = "false",
    energy_required = 6,
    ingredients ={
		{type="item", name="mukmoux-fat", amount=20},
		{type="item", name="nexelit-plate", amount=10},
		{type="fluid", name="lubricant", amount=200},
		--add bobs lithium
    },
    results=
    {
        {type="fluid", name="grease", amount=100},
    },
    --main_product= "grease",
    icon = "__pyfusionenergy__/graphics/icons/grease.png",
    subgroup = "py-fusion-fluids",
    order = "c",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "grease",
    icon = "__pyfusionenergy__/graphics/icons/grease.png",
    default_temperature = 15,
    base_color = {r = 0.541, g = 0.686, b = 0.250},
    flow_color = {r = 0.541, g = 0.686, b = 0.250},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, grease})
