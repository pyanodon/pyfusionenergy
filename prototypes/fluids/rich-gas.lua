Recipe {
    type = "recipe",
    name = "rich-gas",
    category = "distilator",
    enabled = "false",
    energy_required = 6,
    ingredients = {
        {type = "fluid", name = "high-purified-gas", amount = 100}
    },
    results = {
        {type = "fluid", name = "rich-gas", amount = 80},
        {type = "fluid", name = "methanol", amount = 10},
        {type = "fluid", name = "helium-rich-gas", amount = 10}
    },
    main_product= "rich-gas"
}

Fluid {
    type = "fluid",
    name = "rich-gas",
    icon = "__pyfusionenergy__/graphics/icons/rich-gas.png",
    default_temperature = 15,
    base_color = {r = 0.235, g = 0.65, b = 0.435},
    flow_color = {r = 0.235, g = 0.65, b = 0.435},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}
