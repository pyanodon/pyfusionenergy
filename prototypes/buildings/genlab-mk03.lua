local pipe = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/genlab/bottom.png",
        priority = "extra-high",
        width = 224,
        height = 257
    }
}

RECIPE {
    type = "recipe",
    name = "genlab-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {'genlab-mk02', 1},
                {"electric-engine-unit", 4},
                {'processing-unit', 10}
            },
    results = {
        {"genlab-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "genlab-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/genlab-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "d",
    place_result = "genlab-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "genlab-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/genlab-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "genlab-mk03"},
    fast_replaceable_group = "genlab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"genlab"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1250kW",
    animation = {
		layers = {
		{
        filename = "__pyfusionenergygraphics__/graphics/entity/genlab/off.png",
        width = 224,
        height = 257,
        frame_count = 1,
        shift = {-0.00, -0.15}
		},
		{
        filename = "__pyfusionenergygraphics__/graphics/entity/genlab/off-mask.png",
        width = 224,
        height = 257,
        frame_count = 1,
        shift = {-0.00, -0.15},
		tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
		}
		}
    },
    working_visualisations = {
        {
            north_position = {-0.25, -1.624},
            west_position = {-0.25, -1.624},
            south_position = {-0.25, -1.624},
            east_position = {-0.25, -1.624},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/genlab/main.png",
                frame_count = 100,
                width = 140,
                height = 163,
                line_length = 14,
                animation_speed = 0.3,
                priority = "medium",
                run_mode = "forward-then-backward"
            }
        },
        {
            north_position = {-0.0, -3.156},
            west_position = {-0.0, -3.156},
            south_position = {-0.0, -3.156},
            east_position = {-0.0, -3.156},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/genlab/cooler.png",
                frame_count = 80,
                width = 224,
                height = 64,
                line_length = 9,
                animation_speed = 0.5,
                priority = "high"
            }
        },
        {
            north_position = {2.0, -0.556},
            west_position = {2.0, -0.556},
            south_position = {2.0, -0.556},
            east_position = {2.0, -0.556},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/genlab/smoke.png",
                frame_count = 50,
                width = 96,
                height = 96,
                line_length = 20,
                animation_speed = 0.5,
                priority = "high"
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-2.0, -4.25}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-2.00, -4.25}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/genlab.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/genlab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
