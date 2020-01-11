RECIPE {
    type = "recipe",
    name = "vpulp5",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vpulp4", amount = 100},
        {type = "fluid", name = "steam", amount = 200, temperature = 165}
    },
    results = {
        {type = "fluid", name = "vpulp5", amount = 100},
        {type = "item", name = "vanadium-oxide", amount = 1, probability = 0.2}
    },
    main_product = "vpulp5",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp5.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "l"
}

FLUID {
    type = "fluid",
    name = "vpulp5",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp5.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 0.870, g = 0, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "k"
}
