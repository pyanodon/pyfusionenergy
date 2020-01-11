RECIPE {
    type = "recipe",
    name = "ethanolamine",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "bacteria-1", amount = 100},
        {type = "item", name = "methyl-acrylate", amount = 10}
    },
    results = {
        {type = "fluid", name = "ethanolamine", amount = 200}
    }
}

FLUID {
    type = "fluid",
    name = "ethanolamine",
    icon = "__pyfusionenergy__/graphics/icons/ethanolamine.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.917, g = 0.866, b = 0.360},
    flow_color = {r = 0.917, g = 0.866, b = 0.360},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}
