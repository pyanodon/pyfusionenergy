RECIPE({
    type = "recipe",
    name = "molybdenum-pulp",
    category = "thickener",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "fluid", name = "water",                  amount = 300 },
        { type = "item",  name = "molybdenum-concentrate", amount = 30 }
    },
    results = {
        { type = "fluid", name = "molybdenum-pulp", amount = 100 },
        { type = "fluid", name = "muddy-sludge",    amount = 200 }
    },
    main_product = "molybdenum-pulp"
})

FLUID({
    type = "fluid",
    name = "molybdenum-pulp",
    icon = "__pyfusionenergygraphics__/graphics/icons/molybdenum-pulp.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = { r = 0.278, g = 0.36, b = 0.458 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "a"
})
