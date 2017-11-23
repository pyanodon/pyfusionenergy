local vanadium_solution = {
    type = "recipe",
    name = "vanadium-solution",
    category = "evaporator",
    enabled = "false",
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "blue-liquor", amount = 300}
    },
    results = {
        {type = "fluid", name = "vanadium-solution", amount = 100}
    },
    main_product = "vanadium-solution",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-solution.png",
    subgroup = "py-fusion-fluids",
    order = "p"
}

local fluid = {
    type = "fluid",
    name = "vanadium-solution",
    icon = "__pyfusionenergy__/graphics/icons/vanadium-solution.png",
    default_temperature = 15,
    base_color = {r = 0.866, g = 0.192, b = 0.192},
    flow_color = {r = 0.866, g = 0.192, b = 0.192},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "p"
}

data:extend {fluid, vanadium_solution}
