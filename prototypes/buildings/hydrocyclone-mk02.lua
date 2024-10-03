RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {type = "item", name = "hydrocyclone-mk01", amount = 1},
                {type = "item", name = "engine-unit", amount = 3},
                {type = "item", name = 'nexelit-plate', amount = 15},
                {type = "item", name = 'advanced-circuit', amount = 10}
            },
    results = {
        {type = "item", name = "hydrocyclone-mk02", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "hydrocyclone-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "c",
    place_result = "hydrocyclone-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hydrocyclone-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hydrocyclone-mk02"},
    fast_replaceable_group = "hydrocyclone",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hydrocyclone"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "900kW",
    graphics_set = {
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
    				tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
    				}
    				}
                }
            }
        },
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
    		tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
    		},
    	}
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.2}, direction = defines.direction.north}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -3.2}, direction = defines.direction.north}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 3.2}, direction = defines.direction.south}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {1.0, 3.2}, direction = defines.direction.south}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
