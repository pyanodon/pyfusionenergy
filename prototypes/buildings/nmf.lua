local pipes = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/nmf/bottom.png",
        priority = "extra-high",
        width = 232,
        height = 245
    }
}

Recipe {
    type = "recipe",
    name = "nmf",
    energy_required = 25,
    enabled = false,
    ingredients = {
        {"evaporator", 2},
        {"botanical-nursery", 1},
        {"fast-transport-belt", 35},
        {"advanced-circuit", 40},
        {"steel-plate", 50},
        {"pipe", 15} --pyindustry niobium-pipe
        --add glass
    },
    results = {
        {"nmf", 1}
    }
}

Item {
    type = "item",
    name = "nmf",
    icon = "__pyfusionenergy__/graphics/icons/nmf.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "b",
    place_result = "nmf",
    stack_size = 10
}

Entity {
    type = "assembling-machine",
    name = "nmf",
    icon = "__pyfusionenergy__/graphics/icons/nmf.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "nmf"},
    fast_replaceable_group = "nmf",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"nmf"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.07 / 5
    },
    energy_usage = "500kW",
    ingredient_count = 4,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergy__/graphics/entity/nmf/left.png",
                width = 128,
                height = 245,
                line_length = 15,
                frame_count = 80,
                animation_speed = 0.8,
                shift = {-1.5, -0.0}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/nmf/right.png",
                width = 104,
                height = 245,
                line_length = 15,
                frame_count = 80,
                animation_speed = 0.8,
                shift = {2.1, -0.0}
            }
        }
    },
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.0, 0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {4.0, 0.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/nmf.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergy__/sounds/nmf.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
}
