RECIPE {
    type = "recipe",
    name = "pressured-vpulp",
    category = "vacuum",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "vpulp3", amount = 200}
    },
    results = {
        {type = "fluid", name = "pressured-vpulp", amount = 200}
    }
}

FLUID {
    type = "fluid",
    name = "pressured-vpulp",
    icon = "__pyfusionenergygraphics__/graphics/icons/pressured-vpulp.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "m"
}
