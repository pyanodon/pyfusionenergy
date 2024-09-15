RECIPE {
    type = "recipe",
    name = "pressured-air",
    category = "vacuum",
    enabled = false,
    energy_required = 2,
    ingredients = {},
    results = {
        {type = "fluid", name = "pressured-air", amount = 200}
    }
}:add_unlock("fluid-pressurization")

FLUID {
    type = "fluid",
    name = "pressured-air",
    icon = "__pyfusionenergygraphics__/graphics/icons/pressured-air.png",
	icon_size = 32,
    default_temperature = 15,
    base_flow_rate = 100,
    base_color = {r = 0.270, g = 0.772, b = 1.0},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-gases",
    order = "c"
}
