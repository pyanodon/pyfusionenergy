RECIPE {
    type = "recipe",
    name = "purified-air",
    category = "carbonfilter",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "pressured-air", amount = 100},
        {type = "item",  name = "active-carbon", amount = 3}
    },
    results = {
        {type = "fluid", name = "purified-air", amount = 50}
    }
}

FLUID {
    type = "fluid",
    name = "purified-air",
    icon = "__pyfusionenergygraphics__/graphics/icons/purified-air.png",
    icon_size = 32,
    default_temperature = 15,
    base_flow_rate = 100,
    base_color = {r = 0.270, g = 0.772, b = 1.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-gases",
    order = "c"
}
