RECIPE {
    type = "recipe",
    name = "pregnant-solution",
    category = "hydrocyclone",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "acid-strip-solution", amount = 150},
        {type = "fluid", name = "organic-vanadate",    amount = 40}
    },
    results = {
        {type = "fluid", name = "pregnant-solution", amount = 300}
    },
    main_product = "pregnant-solution",
    icon = "__pyfusionenergygraphics__/graphics/icons/pregnant-solution-hydrocyclone.png",
    icon_size = 32,
    subgroup = "py-fusion-fluids",
    order = "s"
}

FLUID {
    type = "fluid",
    name = "pregnant-solution",
    icon = "__pyfusionenergygraphics__/graphics/icons/pregnant-solution.png",
    icon_size = 32,
    default_temperature = 10,
    base_flow_rate = 100,
    base_color = {r = 0.878, g = 0.725, b = 0.282},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "s"
}
