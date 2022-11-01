RECIPE {
    type = "recipe",
    name = "liquid-rich-gas",
    category = "compressor",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "rich-gas", amount = 4},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "steam", amount = 100, temperature = 150},
        {type = "fluid", name = "liquid-rich-gas", amount = 4}
    },
    main_product= "liquid-rich-gas",
}

FLUID {
    type = "fluid",
    name = "liquid-rich-gas",
    icon = "__pyfusionenergygraphics__/graphics/icons/liquid-rich-gas.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.235, g = 0.65, b = 0.435},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}
