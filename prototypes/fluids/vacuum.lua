RECIPE({
    type = "recipe",
    name = "vacuum",
    category = "vacuum",
    enabled = false,
    energy_required = 2,
    ingredients = {},
    results = {
        { type = "fluid", name = "vacuum", amount = 200 }
    }
}):add_unlock("fluid-pressurization")

FLUID({
    type = "fluid",
    name = "vacuum",
    icon = "__pyfusionenergygraphics__/graphics/icons/vacuum.png",
    icon_size = 32,
    default_temperature = 15,
    base_color = { r = 0.01, g = 0.01, b = 0.01 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "c"
})
