RECIPE {
    type = "recipe",
    name = "liquid-pure-air",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "cold-clean-air", amount = 5},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-pure-air", amount = 5},
        {type = "fluid", name = "steam", amount = 100, temperature = 150}
    },
    main_product = "liquid-pure-air",
    icon = "__pyfusionenergygraphics__/graphics/icons/compress-cold-air.png",
	icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}

FLUID {
    type = "fluid",
    name = "liquid-pure-air",
    icon = "__pyfusionenergygraphics__/graphics/icons/liquid-pure-air.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.560, g = 0.862, b = 1.0},
    flow_color = {r = 0.560, g = 0.862, b = 1.0},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}
