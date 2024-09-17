RECIPE {
    type = "recipe",
    name = "compressor-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe", amount = 20}, --pyindustry niobium-pipe
        {type = "item", name = "evaporator", amount = 1},
        {type = "item", name = "steam-engine", amount = 3},
        {type = "item", name = "steel-plate", amount = 30},
        {type = "item", name = "iron-gear-wheel", amount = 30} --updated-bob titanium-bearing
    },
    results = {
        {type = "item", name = "compressor-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "compressor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/compressor-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "d",
    place_result = "compressor-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "compressor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/compressor-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "compressor-mk01"},
    fast_replaceable_group = "compressor",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"compressor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "450kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.55, -0.45},
                west_position = {0.55, -0.45},
                south_position = {0.55, -0.45},
                east_position = {0.55, -0.45},
                animation = {
    				layers = {
    					{
    					filename = "__pyfusionenergygraphics__/graphics/entity/compressor/on.png",
    					frame_count = 50,
    					width = 261,
    					height = 252,
    					line_length = 7,
    					animation_speed = 0.5,
    					priority = "medium"
    					},
    					{
    					filename = "__pyfusionenergygraphics__/graphics/entity/compressor/on-mask.png",
    					frame_count = 50,
    					width = 261,
    					height = 252,
    					line_length = 7,
    					animation_speed = 0.5,
    					priority = "medium",
    					tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
    					}
    				}
                }
            }
        },
        animation = {
    		layers = {
    			{
    			filename = "__pyfusionenergygraphics__/graphics/entity/compressor/off.png",
    			width = 261,
    			height = 252,
    			frame_count = 1,
    			shift = {0.55, -0.45}
    			},
    			{
    			filename = "__pyfusionenergygraphics__/graphics/entity/compressor/off-mask.png",
    			width = 261,
    			height = 252,
    			frame_count = 1,
    			shift = {0.55, -0.45},
    			tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
    			}
    		}
        },
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, -3.2}, direction = defines.direction.north}},
            priority = "extra-high"
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -3.2}, direction = defines.direction.north}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, -3.2}, direction = defines.direction.north}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 3.2}, direction = defines.direction.south}},
            priority = "extra-high"
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.2}, direction = defines.direction.south}},
            priority = "extra-high"
        },
        --South3
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.2}, direction = defines.direction.south}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/compressor.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
