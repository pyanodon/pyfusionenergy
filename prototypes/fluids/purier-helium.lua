RECIPE {
    type = "recipe",
    name = "purier-helium",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "helium-rich-gas", amount = 3},
        {type = "fluid", name = "water",           amount = 100},
        {type = "fluid", name = "gasoline",        amount = 5}
    },
    results = {
        {type = "fluid", name = "steam",         amount = 100, temperature = 150, ignored_by_productivity = 100, ignored_by_stats = 100},
        {type = "fluid", name = "purier-helium", amount = 2}
    },
    main_product = "purier-helium"
}

FLUID {
    type = "fluid",
    name = "purier-helium",
    icon = "__pyfusionenergygraphics__/graphics/icons/purier-helium.png",
    icon_size = 32,
    default_temperature = 15,
    base_flow_rate = 100,
    base_color = {r = 1, g = 0.952, b = 0.835},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "d"
}
