RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {'hydrocyclone-mk03', 1},
                --{'super-steel', 30},
                --{'low-density-structure', 15},
                --{'nbfe-alloy', 20}
            },
    results = {
        {"hydrocyclone-mk04", 1}
    }
}

ITEM {
    type = "item",
    name = "hydrocyclone-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk04.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "c",
    place_result = "hydrocyclone-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hydrocyclone-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk04.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hydrocyclone-mk04"},
    fast_replaceable_group = "hydrocyclone",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hydrocyclone"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1900kW",
    animation = {
		layers = {
			{
        filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-off.png",
        width = 270,
        height = 304,
        frame_count = 1,
        shift = {0.687, -1.281}
		},
		{
        filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-off-mask.png",
        width = 270,
        height = 304,
        frame_count = 1,
        shift = {0.687, -1.281},
		tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
		},
	}
    },
    working_visualisations = {
        {
            north_position = {0.687, -1.281},
            west_position = {0.687, -1.281},
            south_position = {0.687, -1.281},
            east_position = {0.687, -1.281},
            animation = {
				layers = {
					{
                filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on.png",
                frame_count = 1,
                width = 270,
                height = 304
				},
				{
                filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on-mask.png",
                frame_count = 1,
                width = 270,
                height = 304,
				tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
				}
				}
            }
        }
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
