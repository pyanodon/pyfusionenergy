FLUID {
    type = "fluid",
    name = "pressured-steam",
    icon = "__pyfusionenergygraphics__/graphics/icons/pressured-steam.png",
	icon_size = 32,
    default_temperature = 15,
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 5000,
    heat_capacity = "25KJ",
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "c"
}
