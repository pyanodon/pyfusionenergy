RECIPE {
    type = "recipe",
    name = "ethanolamine",
    category = "bio-reactor",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "bacteria-1",      amount = 100},
        {type = "item",  name = "methyl-acrylate", amount = 10}
    },
    results = {
        {type = "fluid", name = "ethanolamine", amount = 200}
    }
}

FLUID {
    type = "fluid",
    name = "ethanolamine",
    icon = "__pyfusionenergygraphics__/graphics/icons/ethanolamine.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.917, g = 0.866, b = 0.360},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "d"
}
