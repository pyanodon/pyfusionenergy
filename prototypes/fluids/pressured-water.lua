RECIPE {
    type = "recipe",
    name = "pressured-water",
    category = "vacuum",
    enabled = false,
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "pressured-water", amount = 500}
    }
}:add_unlock("fluid-pressurization")

FLUID {
    type = "fluid",
    name = "pressured-water",
    icon = "__pyfusionenergygraphics__/graphics/icons/pressured-water.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.031, g = 0.372, b = 0.423},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "f"
}
