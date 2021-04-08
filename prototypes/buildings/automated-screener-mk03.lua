RECIPE {
    type = "recipe",
    name = "automated-screener-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {'automated-screener-mk02', 1},
                --{'titanium-plate', 20},
                --{'stainless-steel', 20},
                --{'tin-plate', 20},
                {'processing-unit', 10}
            },
    results = {
        {"automated-screener-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "automated-screener-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "d",
    place_result = "automated-screener-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "automated-screener-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "automated-screener-mk03"},
    fast_replaceable_group = "automated-screener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"screener"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1300kW",
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
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
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
