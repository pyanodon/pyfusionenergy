local pipe = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/genlab/bottom.png",
        priority = "extra-high",
        width = 224,
        height = 257
    }
}

Recipe {
    type = "recipe",
    name = "genlab",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"pipe", 10}, --pyindustry niobium-pipe
        {"assembling-machine-3", 2},
        {"gasifier", 2},
        {"nexelit-plate", 30},
        {"steel-plate", 40},
        {"iron-gear-wheel", 30} --updated-bob nitinol-bearing
        --add glass
    },
    results = {
        {"genlab", 1}
    }
}

Item {
    type = "item",
    name = "genlab",
    icon = "__pyfusionenergy__/graphics/icons/genlab.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "d",
    place_result = "genlab",
    stack_size = 10
}

Entity {
    type = "assembling-machine",
    name = "genlab",
    icon = "__pyfusionenergy__/graphics/icons/genlab.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "genlab"},
    fast_replaceable_group = "genlab",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"genlab"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.02
    },
    energy_usage = "250kW",
    ingredient_count = 4,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/genlab/off.png",
        width = 224,
        height = 257,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {-0.00, -0.15}
    },
    working_visualisations = {
        {
            north_position = {-0.25, -1.624},
            west_position = {-0.25, -1.624},
            south_position = {-0.25, -1.624},
            east_position = {-0.25, -1.624},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/genlab/main.png",
                frame_count = 100,
                width = 140,
                height = 163,
                line_length = 14,
                animation_speed = 0.2,
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
                filename = "__pyfusionenergy__/graphics/entity/genlab/cooler.png",
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
                filename = "__pyfusionenergy__/graphics/entity/genlab/smoke.png",
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
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-2.0, -4.25}, nil, nil, pipe),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}},
            priority = "extra-high"
        },
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-2.00, -4.25}, nil, nil, pipe),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/genlab.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergy__/sounds/genlab.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
