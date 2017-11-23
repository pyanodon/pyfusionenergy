local fluid = {
    type = "fluid",
    name = "jig-grade2",
    icon = "__pyfusionenergy__/graphics/icons/jig2.png",
    default_temperature = 15,
    base_color = {r = 0.995, g = 0.278, b = 0.576},
    flow_color = {r = 0.995, g = 0.278, b = 0.576},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "j"
}

data:extend {fluid}
