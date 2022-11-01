RECIPE{
    type = "recipe",
    name = "industrial-solvent",
    category = "mixer",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "fluid", name = "organic-solvent", amount = 200},
        {type = "fluid", name = "soda-ash", amount = 200},
        {type = "fluid", name = "syngas", amount = 200}
    },
    results = {
        {type = "fluid", name = "industrial-solvent", amount = 100}
    }
}

FLUID {
    type = "fluid",
    name = "industrial-solvent",
    icon = "__pyfusionenergygraphics__/graphics/icons/industrial-solvent.png",
	icon_size = 32,
    default_temperature = 10,
    base_color = {r = 0.941, g = 0.305, b = 0.215},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-fusion-fluids",
    order = "r"
}
