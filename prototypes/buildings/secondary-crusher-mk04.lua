RECIPE {
    type = "recipe",
    name = "secondary-crusher-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {type = "item", name = 'secondary-crusher-mk03', amount = 1},
                --{type = "item", name = 'super-steel', amount = 30},
                --{type = "item", name = 'low-density-structure', amount = 15},
                --{type = "item", name = 'nbfe-alloy', amount = 20}
            },
    results = {
        {type = "item", name = "secondary-crusher-mk04", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "secondary-crusher-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk04.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "b",
    place_result = "secondary-crusher-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "secondary-crusher-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "secondary-crusher-mk04"},
    fast_replaceable_group = "secondary-crusher",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"secondary-crusher"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1950kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/left.png",
                    width = 128,
                    height = 238,
                    line_length = 16,
                    frame_count = 90,
                    animation_speed = 1,
                    shift = {-1.657, -0.281}
                },
    			{
                    filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/left-mask.png",
                    width = 128,
                    height = 238,
                    line_length = 16,
                    frame_count = 90,
                    animation_speed = 1,
                    shift = {-1.657, -0.281},
    				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/right.png",
                    width = 108,
                    height = 238,
                    line_length = 16,
                    frame_count = 90,
                    animation_speed = 1,
                    shift = {2.03, -0.281}
                },
    			{
                    filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/right-mask.png",
                    width = 108,
                    height = 238,
                    line_length = 16,
                    frame_count = 90,
                    animation_speed = 1,
                    shift = {2.03, -0.281},
    				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                }
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/secondary-crusher.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
