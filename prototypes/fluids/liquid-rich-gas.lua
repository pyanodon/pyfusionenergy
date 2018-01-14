Recipe {
    type = "recipe",
    name = "liquid-rich-gas",
    category = "compressor",
    enabled = "false",
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "rich-gas", amount = 4},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "steam", amount = 100},
        {type = "fluid", name = "liquid-rich-gas", amount = 4}
    },
    main_product= "liquid-rich-gas",
}

Fluid {
    type = "fluid",
    name = "liquid-rich-gas",
    icon = "__pyfusionenergy__/graphics/icons/liquid-rich-gas.png",
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
