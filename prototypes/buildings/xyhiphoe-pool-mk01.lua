RECIPE {
    type = "recipe",
    name = "xyhiphoe-pool-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"ralesia-plantation-mk01", 1},
        {"pump", 4},
        {"advanced-circuit", 20}, --updated-bob electronic-circuit-board
        {"steel-plate", 40},
        {"pipe", 10}
    },
    results = {
        {"xyhiphoe-pool-mk01", 1}
    }
}:add_unlock('xyhiphoe')

ITEM {
    type = "item",
    name = "xyhiphoe-pool-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "b",
    place_result = "xyhiphoe-pool-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "xyhiphoe-pool-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "xyhiphoe-pool-mk01"},
    fast_replaceable_group = "xyhiphoe-pool",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"xyhiphoe"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "650kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {-2.532, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left-mask.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {-2.532, -0.966},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {0.468, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid-mask.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {0.468, -0.966},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right.png",
                width = 82,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {3.250, -0.966}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right-mask.png",
                width = 82,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {3.250, -0.966},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {-1.5, 4.5}}
            }
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {1.5, 4.5}}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {-1.5, -4.5}}
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.0, -0.90}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {1.5, -4.5}}
            }
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
