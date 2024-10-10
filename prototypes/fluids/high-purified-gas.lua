RECIPE {
    type = "recipe",
    name = "high-purified-gas",
    category = "fluid-separator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "dry-gas-stream", amount = 10},
        {type = "fluid", name = "ethanolamine",   amount = 25}
    },
    results = {
        {type = "fluid", name = "high-purified-gas", amount = 100},
        {type = "fluid", name = "carbon-dioxide",    amount = 30}
    },
    main_product = "high-purified-gas"
}

FLUID {
    type = "fluid",
    name = "high-purified-gas",
    icon = "__pyfusionenergygraphics__/graphics/icons/high-purified-gas.png",
    icon_size = 32,
    default_temperature = 15,
    base_flow_rate = 100,
    base_color = {r = 0.956, g = 0.796, b = 0.537},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}
