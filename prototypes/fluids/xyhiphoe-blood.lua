local fluid = {
    type = "fluid",
    name = "xyhiphoe-blood",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-blood.png",
    default_temperature = 15,
    base_color = {r = 0.278, g = 0.0, b = 0.796},
    flow_color = {r = 0.278, g = 0.0, b = 0.796},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "e"
}

data:extend {fluid}
