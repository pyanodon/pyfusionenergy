RECIPE {
    type = "recipe",
    name = "liquid-nitrogen",
    category = "compressor",
    enabled = "false",
    energy_required = 1,
    ingredients = {
        {type = "fluid", name = "nitrogen", amount = 50},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "gasoline", amount = 5}
    },
    results = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5},
        {type = "fluid", name = "steam", amount = 100}
    },
    main_product = "liquid-nitrogen",
    icon = "__pyfusionenergy__/graphics/icons/compress-nitrogen.png",
	icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "a"
}:add_unlock("helium-processing")

RECIPE {
    type = "recipe",
    name = "evaporate-nitrogen",
    category = "evaporator",
    enabled = "false",
    energy_required = 2,
    ingredients = {
        {type = "fluid", name = "liquid-nitrogen", amount = 5}
    },
    results = {
        {type = "fluid", name = "nitrogen", amount = 50}
    },
    main_product = "nitrogen",
    icon = "__bobplates__/graphics/icons/nitrogen.png",
	icon_size = 32,
    subgroup = "py-fusion-gases",
    order = "b"
}:add_unlock("helium-processing")
