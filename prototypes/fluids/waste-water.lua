local fluid = {
    type = "fluid",
    name = "waste-water",
    icon = "__pyfusionenergy__/graphics/icons/waste-water.png",
    default_temperature = 15,
    base_color = {r = 0.274, g = 0.341, b = 0.313},
    flow_color = {r = 0.274, g = 0.341, b = 0.313},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "g"
}

data:extend {fluid}
