RECIPE {
    type = "recipe",
    name = "secondary-crusher-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {"secondary-crusher-mk01", 1},
                --{'duralumin', 15},
                --{'lead-plate', 10},
                {'nexelit-plate', 15},
                {'advanced-circuit', 10}
            },
    results = {
        {"secondary-crusher-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "secondary-crusher-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "b",
    place_result = "secondary-crusher-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "secondary-crusher-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "secondary-crusher-mk02"},
    fast_replaceable_group = "secondary-crusher",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"secondary-crusher"},
    crafting_speed = 2.5,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "950kW",
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
				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/secondary-crusher.ogg", volume = 1.1},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/secondary-crusher.ogg", volume = 0.60},
        apparent_volume = 2.5
    }
}
