RECIPE {
    type = "recipe",
    name = "diamond-concentrate",
    category = "pan",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "diamond-tailings", amount = 100},
        {type = "fluid", name = "soda-ash", amount = 100}
    },
    results = {
        {type = "fluid", name = "diamond-concentrate", amount = 150},
        {type = "item", name = "diamond-reject", amount = 15},
        {type = "fluid", name = "dirty-water-light", amount = 200}
    },
    main_product = "diamond-concentrate",
    icon = "__pyfusionenergygraphics__/graphics/icons/pan-diamond-concentrate.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "j"
}

FLUID {
    type = "fluid",
    name = "diamond-concentrate",
    icon = "__pyfusionenergygraphics__/graphics/icons/diamond-concentrate.png",
	icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.627, g = 0.764, b = 0.850},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}
