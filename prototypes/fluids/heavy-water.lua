Recipe {
    type = "recipe",
    name = "heavy-water",
    category = "quenching-tower",
    enabled = "false",
    energy_required = 6,
    ingredients = {
        {type = "item", name = "sulfur", amount = 25},
        {type = "fluid", name = "pressured-water", amount = 1000}
    },
    results = {
        {type = "fluid", name = "heavy-water", amount = 10}
    }
}

Fluid {
    type = "fluid",
    name = "heavy-water",
    icon = "__pyfusionenergy__/graphics/icons/heavy-water.png",
    default_temperature = 15,
    base_color = {r = 0.423, g = 0.678, b = 0.823},
    flow_color = {r = 0.423, g = 0.678, b = 0.823},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}
