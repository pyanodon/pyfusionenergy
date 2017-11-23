local fluid = {
    type = "fluid",
    name = "gas-stream",
    icon = "__pyfusionenergy__/graphics/icons/gas-stream.png",
    default_temperature = 15,
    base_color = {r = 0.692, g = 0.284, b = 0.190},
    flow_color = {r = 0.692, g = 0.284, b = 0.190},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}

data:extend {fluid}
