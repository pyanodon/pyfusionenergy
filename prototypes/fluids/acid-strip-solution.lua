Recipe {
    type = "recipe",
    name = "acid-strip-solution",
    category = "methanol",
    enabled = "false",
    energy_required = 12,
    ingredients = {
        {type = "fluid", name = "water", amount = 200},
        {type = "fluid", name = "sulfuric-acid", amount = 100},
        {type = "fluid", name = "methanol", amount = 200}
    },
    results = {
        {type = "fluid", name = "acid-strip-solution", amount = 300}
    }
}

Fluid {
    type = "fluid",
    name = "acid-strip-solution",
    icon = "__pyfusionenergy__/graphics/icons/acid-strip-solution.png",
	icon_size = 32,
    default_temperature = 15,
    base_color = {r = 0.521, g = 0.176, b = 0.003},
    flow_color = {r = 0.521, g = 0.176, b = 0.003},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}
