local pipes = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/thickener/bottom.png",
        priority = "extra-high",
        width = 237,
        height = 260
    }
}

RECIPE {
    type = "recipe",
    name = "thickener-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {'thickener-mk02', 1},
                {"electric-engine-unit", 3},
                {'processing-unit', 10}
            },
    results = {
        {"thickener-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "thickener-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "b",
    place_result = "thickener-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "thickener-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/thickener-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "thickener-mk03"},
    fast_replaceable_group = "thickener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"thickener"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1400kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom.png",
                width = 237,
                height = 132,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, 1.42}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-bottom-mask.png",
                width = 237,
                height = 132,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, 1.42},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top.png",
                width = 237,
                height = 128,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, -2.640}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/thickener/thickener-top-mask.png",
                width = 237,
                height = 128,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, -2.640},
				tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 3.2}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.2, -1.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.2}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {1.19, -4.4}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.2, 1.0}, direction = defines.direction.east}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/thickener.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
