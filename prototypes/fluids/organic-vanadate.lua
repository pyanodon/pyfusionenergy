RECIPE {
    type = "recipe",
    name = "organic-vanadate",
    category = "mixer",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "vanadates", amount = 200},
        {type = "fluid", name = "oleochemicals", amount = 200},
        {type = "fluid", name = "vanadium-concentrate", amount = 100}
    },
    results = {
        {type = "fluid", name = "organic-vanadate", amount = 20},
        {type = "fluid", name = "vanadium-solution", amount = 100}
    },
    main_product = "organic-vanadate",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-organic-vanadate.png",
	icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "o"
}

FLUID {
    type = "fluid",
    name = "organic-vanadate",
    icon = "__pyfusionenergygraphics__/graphics/icons/organic-vanadate.png",
	icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.627, g = 0.376, b = 0.125},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "o"
}
