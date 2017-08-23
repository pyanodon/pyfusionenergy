-------------------------------------------------------------------------------
--[[INDUSTRIAL SOLVENT]]--
-------------------------------------------------------------------------------
--[[recipes]]--
local industrial_solvent= {
    type = "recipe",
    name = "industrial-solvent",
    category = "mixer",
    enabled = "false",
    energy_required = 10,
    ingredients ={
        {type="fluid", name="organic-solvent", amount=200},
		{type="fluid", name="soda-ash", amount=200},
		{type="fluid", name="syngas", amount=200},
    },
    results=
    {
        {type="fluid", name="industrial-solvent", amount=100},
    },
    main_product= "industrial-solvent",
    icon = "__pyfusionenergy__/graphics/icons/mixer-industrial-solvent.png",
    subgroup = "py-fusion-fluids",
    order = "r",
}

-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "industrial-solvent",
    icon = "__pyfusionenergy__/graphics/icons/industrial-solvent.png",
    default_temperature = 15,
    base_color = {r = 0.941, g = 0.305, b = 0.215},
    flow_color = {r = 0.941, g = 0.305, b = 0.215},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "r"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid, industrial_solvent})
