RECIPE {
    type = "recipe",
    name = "soda-ash",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water",        amount = 250},
        {type = "item",  name = "ash",          amount = 50},
        {type = "fluid", name = "water-saline", amount = 250}
    },
    results = {
        {type = "fluid", name = "soda-ash", amount = 200}
    },
    main_product = "soda-ash",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-soda-ash.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "s"
}

FLUID {
    type = "fluid",
    name = "soda-ash",
    icon = "__pyfusionenergygraphics__/graphics/icons/soda-ash.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.678, g = 0.717, b = 0.776},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "s"
}
