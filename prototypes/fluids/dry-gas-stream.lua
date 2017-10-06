-------------------------------------------------------------------------------
--[[DRY-GAS-STREAM]]--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--[[fluids]]--
local fluid =
{
    type = "fluid",
    name = "dry-gas-stream",
    icon = "__pyfusionenergy__/graphics/icons/dry-gas-stream.png",
    default_temperature = 15,
    base_color = {r = 0.792, g = 0.384, b = 0.290},
    flow_color = {r = 0.792, g = 0.384, b = 0.290},
    max_temperature = 100,
	gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
data:extend({fluid})
