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
    name = "genlab-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe", amount = 10}, --pyindustry niobium-pipe
        {type = "item", name = "steam-engine", amount = 2},
        {type = "item", name = "gasifier", amount = 2},
        {type = "item", name = "nexelit-plate", amount = 30},
        {type = "item", name = "steel-plate", amount = 40},
        {type = "item", name = "iron-gear-wheel", amount = 30} --updated-bob nitinol-bearing
        --add glass
    },
    results = {
        {type = "item", name = "genlab-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "genlab-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/genlab-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "d",
    place_result = "genlab-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "genlab-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/genlab-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "genlab-mk01"},
    fast_replaceable_group = "genlab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"genlab"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "250kW",
    graphics_set = {
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
    		tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
    		}
    		}
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-2.0, -4.25}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, -3.2}, direction = defines.direction.north}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-2.00, -4.25}, nil, nil, pipe),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.2}, direction = defines.direction.south}},
            priority = "extra-high"
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/genlab.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/genlab.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
