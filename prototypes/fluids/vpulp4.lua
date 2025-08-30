RECIPE({
    type = "recipe",
    name = "vpulp4",
    category = "agitator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "fluid", name = "pregnant-solution", amount = 100 },
        { type = "item",  name = "sodium-chlorate",   amount = 20 }
    },
    results = {
        { type = "fluid", name = "vpulp4",         amount = 100 },
        { type = "item",  name = "vanadium-oxide", amount = 1,  probability = 0.3 }
    },
    main_product = "vpulp4",
    icon = "__pyfusionenergygraphics__/graphics/icons/agitation-vpulp4.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "l"
})

FLUID({
    type = "fluid",
    name = "vpulp4",
    icon = "__pyfusionenergygraphics__/graphics/icons/vpulp4.png",
    icon_size = 32,
    default_temperature = 10,
    base_color = { r = 0.870, g = 0, b = 1 },
    flow_color = { r = 1, g = 1, b = 1 },
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "k"
})
