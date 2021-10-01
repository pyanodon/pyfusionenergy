RECIPE {
    type = "recipe",
    name = "purier-helium",
    category = "compressor",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "helium-rich-gas", amount = 3},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "steam", amount = 100, temperature = 150},
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
    base_color = {r = 1, g = 0.952, b = 0.835},
    flow_color = {r = 1, g = 0.952, b = 0.835},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "d"
}
