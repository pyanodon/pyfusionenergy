RECIPE {
    type = "recipe",
    name = "liquid-helium",
    category = "compressor",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "helium", amount = 20},
        {type = "fluid", name = "water", amount = 600},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-helium", amount = 2},
        {type = "fluid", name = "steam", amount = 600}
    },
    main_product = "liquid-helium",
}

RECIPE {
    type = "recipe",
    name = "evaporate-helium",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "liquid-helium", amount = 2}
    },
    results = {
        {type = "fluid", name = "helium", amount = 20}
    },
    main_product = "helium",
    icon = "__pyfusionenergy__/graphics/icons/helium.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "c"
}

FLUID {
    type = "fluid",
    name = "liquid-helium",
    icon = "__pyfusionenergy__/graphics/icons/liquid-helium.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 1, g = 0.952, b = 0.835},
    flow_color = {r = 1, g = 0.952, b = 0.835},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}
