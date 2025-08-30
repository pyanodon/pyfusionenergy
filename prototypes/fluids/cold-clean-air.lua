RECIPE({
    type = "recipe",
    name = "cold-clean-air",
    category = "carbonfilter",
    enabled = false,
    energy_required = 8,
    ingredients = {
        { type = "fluid", name = "cold-air",         amount = 100 },
        { type = "item",  name = "filtration-media", amount = 1 }
    },
    results = {
        { type = "fluid", name = "cold-clean-air", amount = 75 },
        { type = "fluid", name = "petroleum-gas",  amount = 3 }
    },
    main_product = "cold-clean-air",
})

FLUID({
    type = "fluid",
    name = "cold-clean-air",
    icon = "__pyfusionenergygraphics__/graphics/icons/cold-clean-air.png",
    icon_size = 32,
    default_temperature = 15,
    base_color = { r = 0.560, g = 0.862, b = 1.0 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-gases",
    order = "c"
})
