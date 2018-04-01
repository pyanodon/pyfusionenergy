RECIPE {
    type = "recipe",
    name = "vacuum",
    category = "vacuum",
    enabled = false,
    energy_required = 1,
    ingredients = {},
    results = {
        {type = "fluid", name = "vacuum", amount = 10}
    }
}

FLUID {
    type = "fluid",
    name = "vacuum",
    icon = "__pyfusionenergy__/graphics/icons/vacuum.png",
	icon_size = 32,
    default_temperature = 15,
    base_color = {r = 0.0, g = 0.0, b = 0.0},
    flow_color = {r = 0.0, g = 0.0, b = 0.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}
