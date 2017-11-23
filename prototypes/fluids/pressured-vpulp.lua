local pressured_vpulp = {
    type = "recipe",
    name = "pressured-vpulp",
    category = "vacuum",
    enabled = "false",
    energy_required = 2.5,
    ingredients = {
        {type = "fluid", name = "vpulp3", amount = 100}
    },
    results = {
        {type = "fluid", name = "pressured-vpulp", amount = 100}
    },
    main_product = "pressured-vpulp",
    icon = "__pyfusionenergy__/graphics/icons/pressured-vpulp.png",
    subgroup = "py-fusion-fluids",
    order = "m"
}

local fluid = {
    type = "fluid",
    name = "pressured-vpulp",
    icon = "__pyfusionenergy__/graphics/icons/pressured-vpulp.png",
    default_temperature = 15,
    base_color = {r = 0.870, g = 0, b = 1},
    flow_color = {r = 0.870, g = 0, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "m"
}

data:extend {fluid, pressured_vpulp}
