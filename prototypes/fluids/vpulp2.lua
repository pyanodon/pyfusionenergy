RECIPE {
    type = "recipe",
    name = "vpulp2",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vpulp1", amount = 200},
        {type = "item", name = "iron-oxide", amount = 15}
    },
    results = {
        {type = "fluid", name = "vpulp2", amount = 100}
    },
    main_product = "vpulp2",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp2.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "k"
}

FLUID {
    type = "fluid",
    name = "vpulp2",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp2.png",
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
