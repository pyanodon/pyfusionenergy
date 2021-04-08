RECIPE {
    type = "recipe",
    name = "automated-screener-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {'automated-screener-mk03', 1},
                --{'super-steel', 30},
               --{'low-density-structure', 15},
                --{'nbfe-alloy', 20}
            },
    results = {
        {"automated-screener-mk04", 1}
    }
}

ITEM {
    type = "item",
    name = "automated-screener-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk04.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "d",
    place_result = "automated-screener-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "automated-screener-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "automated-screener-mk04"},
    fast_replaceable_group = "automated-screener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"screener"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1800kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {-2.032, -0.5}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left-mask.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {-2.032, -0.5},
				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {0.968, -0.5}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid-mask.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {0.968, -0.5},
				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right.png",
                width = 38,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {3.032, -0.5}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right-mask.png",
                width = 38,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.4,
                shift = {3.032, -0.5},
				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
}
