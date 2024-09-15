FLUID {
    type = "fluid",
    name = "gas-stream",
    icon = "__pyfusionenergygraphics__/graphics/icons/gas-stream.png",
	icon_size = 32,
    default_temperature = 15,
    base_flow_rate = 100,
    base_color = {r = 0.692, g = 0.284, b = 0.190},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}
