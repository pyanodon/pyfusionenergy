RECIPE {
    type = "recipe",
    name = "kimberlite-pulp",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "kimberlite-grade3", amount = 15},
        {type = "fluid", name = "aromatics", amount = 100},
        {type = "fluid", name = "industrial-solvent", amount = 50},
        {type = "item", name = "lime", amount = 25}
    },
    results = {
        {type = "fluid", name = "kimberlite-pulp", amount = 100}
    },
    main_product = "kimberlite-pulp",
    icon = "__pyfusionenergy__/graphics/icons/mixer-kimberlite-pulp.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "j"
}

FLUID {
    type = "fluid",
    name = "kimberlite-pulp",
    icon = "__pyfusionenergy__/graphics/icons/kimberlite-pulp.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.478, g = 0.545, b = 0.556},
    flow_color = {r = 0.478, g = 0.545, b = 0.556},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}
