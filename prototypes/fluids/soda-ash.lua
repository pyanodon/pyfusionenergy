local soda_ash = {
    type = "recipe",
    name = "soda-ash",
    category = "agitator",
    enabled = "false",
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 250},
        {type = "item", name = "ash", amount = 50},
        {type = "fluid", name = "water-saline", amount = 250}
    },
    results = {
        {type = "fluid", name = "soda-ash", amount = 100}
    },
    main_product = "soda-ash",
    icon = "__pyfusionenergy__/graphics/icons/agitation-soda-ash.png",
    subgroup = "py-fusion-fluids",
    order = "s"
}

local fluid = {
    type = "fluid",
    name = "soda-ash",
    icon = "__pyfusionenergy__/graphics/icons/soda-ash.png",
    default_temperature = 15,
    base_color = {r = 0.678, g = 0.717, b = 0.776},
    flow_color = {r = 0.678, g = 0.717, b = 0.776},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "s"
}

data:extend {fluid, soda_ash}
