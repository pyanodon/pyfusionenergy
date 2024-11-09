RECIPE {
    type = "recipe",
    name = "vanadium-concentrate",
    category = "mixer",
    enabled = false,
    energy_required = 15,
    ingredients = {
        {type = "fluid", name = "industrial-solvent", amount = 200},
        {type = "fluid", name = "hydrogen-peroxide",  amount = 100},
        {type = "fluid", name = "vanadium-solution",  amount = 100},
        {type = "item",  name = "chromium",           amount = 5}
    },
    results = {
        {type = "fluid", name = "vanadium-concentrate", amount = 100},
        {type = "fluid", name = "used-solvent",         amount = 300}
    },
    main_product = "vanadium-concentrate"
}

FLUID {
    type = "fluid",
    name = "vanadium-concentrate",
    icon = "__pyfusionenergygraphics__/graphics/icons/vanadium-concentrate.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.396, g = 0.701, b = 0.607},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    subgroup = "py-fusion-fluids",
    order = "q"
}
