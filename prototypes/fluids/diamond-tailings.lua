RECIPE {
    type = "recipe",
    name = "diamond-tailings",
    category = "pan",
    enabled = false,
    energy_required = 25,
    ingredients = {
        {type = "fluid", name = "kimberlite-pulp", amount = 100},
        {type = "fluid", name = "water", amount = 600}
    },
    results = {
        {type = "fluid", name = "diamond-tailings", amount = 200},
        {type = "item", name = "kimberlite-residue", amount = 25},
        {type = "fluid", name = "diamond-concentrate", amount = 20}
    },
    main_product = "diamond-tailings",
    icon = "__pyfusionenergygraphics__/graphics/icons/pan-diamond-tailings.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "j"
}

FLUID {
    type = "fluid",
    name = "diamond-tailings",
    icon = "__pyfusionenergygraphics__/graphics/icons/diamond-tailings.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.317, g = 0.470, b = 0.482},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}
