RECIPE {
    type = "recipe",
    name = "vanadates",
    category = "carbonfilter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "pressured-vpulp", amount = 200},
        {type = "item",  name = "active-carbon",   amount = 2}
    },
    results = {
        {type = "fluid", name = "vanadates", amount = 100}
    }
}

FLUID {
    type = "fluid",
    name = "vanadates",
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadates.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.141, g = 0.082, b = 0.396},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "n"
}
