Recipe {
    type = "recipe",
    name = "molybdenum-pulp",
    category = "thickener",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "molybdenum-concentrate", amount = 30}
    },
    results = {
        {type = "fluid", name = "molybdenum-pulp", amount = 100},
        {type = "fluid", name = "dirty-water", amount = 200}
    },
    main_product = "molybdenum-pulp"
}

Fluid {
    type = "fluid",
    name = "molybdenum-pulp",
    icon = "__pyfusionenergy__/graphics/icons/molybdenum-pulp.png",
    default_temperature = 15,
    base_color = {r = 0.278, g = 0.36, b = 0.458},
    flow_color = {r = 0.278, g = 0.36, b = 0.458},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "a"
}
