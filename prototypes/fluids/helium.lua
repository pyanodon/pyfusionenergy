local fluid = {
    type = "fluid",
    name = "helium",
    icon = "__pyfusionenergy__/graphics/icons/helium.png",
    default_temperature = 15,
    base_color = {r = 1, g = 0.952, b = 0.835},
    flow_color = {r = 1, g = 0.952, b = 0.835},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}

data:extend {fluid}
