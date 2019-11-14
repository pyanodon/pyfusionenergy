RECIPE {
    type = "recipe",
    name = "blue-liquor",
    category = "thickener",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "vanabins", amount = 60},
        {type = "fluid", name = "water", amount = 100},
        {type = "item", name = "tailings-dust", amount = 30}
    },
    results = {
        {type = "fluid", name = "blue-liquor", amount = 200}
    }
}

FLUID {
    type = "fluid",
    name = "blue-liquor",
    icon = "__pyfusionenergy__/graphics/icons/blue-liquor.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.137, g = 0.525, b = 1},
    flow_color = {r = 0.137, g = 0.525, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "i"
}
