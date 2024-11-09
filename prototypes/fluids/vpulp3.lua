RECIPE {
    type = "recipe",
    name = "vpulp3",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vpulp2",        amount = 100},
        {type = "fluid", name = "petroleum-gas", amount = 100}
    },
    results = {
        {type = "fluid", name = "vpulp3", amount = 100}
    },
    main_product = "vpulp3",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp3.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "l"
}

FLUID {
    type = "fluid",
    name = "vpulp3",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp3.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "l"
}
