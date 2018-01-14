local pipes = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/vacuum-pump/bottom.png",
        priority = "extra-high",
        width = 110,
        height = 148
    }
}

Recipe {
    type = "recipe",
    name = "vacuum-pump",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {"iron-plate", 20},
        {"steel-plate", 10},
        {"iron-gear-wheel", 10},
        {"pipe", 10}
    },
    results = {
        {"vacuum-pump", 1}
    }
}

Item {
    type = "item",
    name = "vacuum-pump",
    icon = "__pyfusionenergy__/graphics/icons/vacuum-pump.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "c",
    place_result = "vacuum-pump",
    stack_size = 10
}

Entity {
    type = "assembling-machine",
    name = "vacuum-pump",
    icon = "__pyfusionenergy__/graphics/icons/vacuum-pump.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "vacuum-pump"},
    fast_replaceable_group = "vacuum-pump",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"vacuum"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.0
    },
    energy_usage = "150kW",
    ingredient_count = 1,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/vacuum-pump/vacuum-pump.png",
        width = 110,
        height = 148,
        frame_count = 20,
        line_length = 5,
        animation_speed = 1,
        shift = {0.187, -0.656}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -2.0}}}
        },
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-2", nil, {0.18, -2.6}, nil, nil, pipes),
            pipe_covers = Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, 2.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/vacuum-pump.ogg", volume = 0.8},
        idle_sound = {filename = "__pyfusionenergy__/sounds/vacuum-pump.ogg", volume = 0.40},
        apparent_volume = 2.5
    }
}
