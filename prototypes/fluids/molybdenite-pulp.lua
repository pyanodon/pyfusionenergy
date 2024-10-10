RECIPE {
    type = "recipe",
    name = "molybdenite-pulp",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water",            amount = 300},
        {type = "item",  name = "molybdenite-dust", amount = 20}
    },
    results = {
        {type = "fluid", name = "molybdenite-pulp", amount = 100}
    }
}

FLUID {
    type = "fluid",
    name = "molybdenite-pulp",
    icon = "__pyfusionenergygraphics__/graphics/icons/molybdenite-pulp.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.317, g = 0.615, b = 0.85},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "a"
}
