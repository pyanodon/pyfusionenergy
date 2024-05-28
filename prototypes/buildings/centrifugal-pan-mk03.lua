local pipe_left = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/top-left.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/bottom-right.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/right-top.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/left-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/top-right.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/bottom-left.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/right-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/left-top.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

RECIPE {
    type = "recipe",
    name = "centrifugal-pan-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {"centrifugal-pan-mk02", 1},
                {"electric-engine-unit", 4},
                {'processing-unit', 10}
            },
    results = {
        {"centrifugal-pan-mk03", 1}
    },
}

ITEM {
    type = "item",
    name = "centrifugal-pan-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/centrifugal-pan-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "d",
    place_result = "centrifugal-pan-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "centrifugal-pan-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/centrifugal-pan-mk03.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "centrifugal-pan-mk03"},
    fast_replaceable_group = "centrifugal-pan",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pan"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "2000kW",
    animation = {
		layers = {
			{
			filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/off.png",
			width = 320,
			height = 328,
			frame_count = 1,
			shift = {0.02, -0.10}
			},
			{
			filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/off-mask.png",
			width = 320,
			height = 328,
			frame_count = 1,
			shift = {0.02, -0.10},
			tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
			}
		}
    },
    working_visualisations = {
        {
            north_position = {0.02, -0.22},
            west_position = {0.02, -0.22},
            south_position = {0.02, -0.22},
            east_position = {0.02, -0.22},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/on.png",
                frame_count = 100,
                line_length = 10,
                width = 192,
                height = 192,
                animation_speed = 0.4
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_picture = py.pipe_pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_connections = {{type = "output", position = {2.5, 5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_connections = {{type = "output", position = {-2.5, 5.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/centrifugal-pan.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/centrifugal-pan.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
