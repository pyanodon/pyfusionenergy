RECIPE {
    type = "recipe",
    name = "vpulp1",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "blue-liquor", amount = 100},
        {type = "fluid", name = "steam",       amount = 300}
    },
    results = {
        {type = "fluid", name = "vpulp1", amount = 100}
    },
    main_product = "vpulp1",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp1.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "j"
}

FLUID {
    type = "fluid",
    name = "vpulp1",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp1.png",
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
    order = "i"
}
