RECIPE {
    type = "recipe",
    name = "grease",
    category = "fts-reactor",
    enabled = false,
    energy_required = 6,
    ingredients = {
        {type = "item",  name = "mukmoux-fat",   amount = 20},
        {type = "item",  name = "nexelit-plate", amount = 10},
        {type = "fluid", name = "lubricant",     amount = 200}
        --add bobs lithium
    },
    results = {
        {type = "fluid", name = "grease", amount = 100}
    }
}

FLUID {
    type = "fluid",
    name = "grease",
    icon = "__pyfusionenergygraphics__/graphics/icons/grease.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.541, g = 0.686, b = 0.250},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}
