local pipes = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/vacuum-pump/bottom.png",
        priority = "extra-high",
        width = 110,
        height = 148
    }
}

RECIPE {
    type = "recipe",
    name = "vacuum-pump-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-plate", amount = 20},
        {type = "item", name = "steel-plate", amount = 10},
        {type = "item", name = "iron-gear-wheel", amount = 10},
        {type = "item", name = "pipe", amount = 10}
    },
    results = {
        {type = "item", name = "vacuum-pump-mk01", amount = 1}
    }
}:add_unlock("fluid-pressurization")

ITEM {
    type = "item",
    name = "vacuum-pump-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/vacuum-pump-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "c",
    place_result = "vacuum-pump-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "vacuum-pump-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/vacuum-pump-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "vacuum-pump-mk01"},
    fast_replaceable_group = "vacuum-pump",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"vacuum"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1MW",
    graphics_set = {
        animation = {
    	layers = {
    		{
            filename = "__pyfusionenergygraphics__/graphics/entity/vacuum-pump/vacuum-pump.png",
            width = 110,
            height = 148,
            frame_count = 20,
            line_length = 5,
            animation_speed = 1,
            shift = {0.187, -0.656}
    		},
    		{
            filename = "__pyfusionenergygraphics__/graphics/entity/vacuum-pump/vacuum-pump-mask.png",
            width = 110,
            height = 148,
            frame_count = 20,
            line_length = 5,
            animation_speed = 1,
            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0},
            shift = {0.187, -0.656}
    		}
    		}
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 2000,
            pipe_connections = {
                {flow_direction = "input-output", position = {-1.0, -0}, direction = defines.direction.west},
                {flow_direction = "input-output", position = {1.0, -0}, direction = defines.direction.east}
            }
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 2000,
            pipe_connections = {
                {flow_direction = "input-output", position = {0.0, 1.0}, direction = defines.direction.south},
                {flow_direction = "input-output", position = {0.0, -1.0}, direction = defines.direction.north}
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/vacuum-pump.ogg", volume = 0.8},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/vacuum-pump.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
