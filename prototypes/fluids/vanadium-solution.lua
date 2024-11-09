RECIPE {
    type = "recipe",
    name = "vanadium-solution",
    category = "evaporator",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blue-liquor", amount = 300}
    },
    results = {
        {type = "fluid", name = "vanadium-solution", amount = 100}
    }
}

FLUID {
    type = "fluid",
    name = "vanadium-solution",
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadium-solution.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.866, g = 0.192, b = 0.192},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "p"
}
