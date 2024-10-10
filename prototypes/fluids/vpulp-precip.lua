RECIPE {
    type = "recipe",
    name = "vpulp-precip",
    category = "agitator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "vpulp5", amount = 100},
        {type = "fluid", name = "water",  amount = 200}
    },
    results = {
        {type = "fluid", name = "vpulp-precip",   amount = 100},
        {type = "item",  name = "vanadium-oxide", amount = 1,  probability = 0.2}
    },
    main_product = "vpulp-precip",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp-precip.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "m"
}

FLUID {
    type = "fluid",
    name = "vpulp-precip",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp-precip.png",
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
    order = "k"
}
