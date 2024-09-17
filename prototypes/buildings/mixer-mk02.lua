RECIPE {
    type = "recipe",
    name = "mixer-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
                {type = "item", name = "mixer-mk01", amount = 1},
                {type = "item", name = "engine-unit", amount = 5},
                {type = "item", name = 'nexelit-plate', amount = 15},
                {type = "item", name = 'advanced-circuit', amount = 10}
            },
    results = {
        {type = "item", name = "mixer-mk02", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "mixer-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "g",
    place_result = "mixer-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "mixer-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "mixer-mk02"},
    fast_replaceable_group = "mixer",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"mixer"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "950kW",
    graphics_set = {
        animation = {
    	layers = {
    	{
            filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer.png",
            width = 246,
            height = 233,
            frame_count = 64,
            line_length = 8,
            animation_speed = 0.4,
            shift = {0.312, -0.156}
        },
    	{
            filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer-mask.png",
            width = 246,
            height = 233,
            frame_count = 64,
            line_length = 8,
            animation_speed = 0.4,
            shift = {0.312, -0.156},
    		tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
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
            pipe_connections = {{flow_direction = "output", position = {-2.0, -3.2}, direction = defines.direction.north}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, -3.2}, direction = defines.direction.north}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -3.2}, direction = defines.direction.north}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 3.2}, direction = defines.direction.south}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.2}, direction = defines.direction.south}}
        },
        --South3
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.2}, direction = defines.direction.south}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
