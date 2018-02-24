RECIPE {
    type = "recipe",
    name = "gas-separator",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"pipe", 30}, --updated-bob stone-pipe
        {"evaporator", 1},
        {"electronic-circuit", 30},
        {"steel-plate", 50},
        {"nichrome", 30},
        {"chemical-plant", 2}
    },
    results = {
        {"gas-separator", 1}
    }
}

ITEM {
    type = "item",
    name = "gas-separator",
    icon = "__pyfusionenergy__/graphics/icons/gas-separator.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "c",
    place_result = "gas-separator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "gas-separator",
    icon = "__pyfusionenergy__/graphics/icons/gas-separator.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "gas-separator"},
    fast_replaceable_group = "gas-separator",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"gas-separator"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01 / 3
    },
    energy_usage = "450kW",
    ingredient_count = 5,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/gas-separator/off.png",
        width = 241,
        height = 265,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.2, -0.635}
    },
    working_visualisations = {
        {
            north_position = {0.2, -0.635},
            west_position = {0.2, -0.635},
            south_position = {0.2, -0.635},
            east_position = {0.2, -0.635},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/gas-separator/on.png",
                frame_count = 50,
                width = 241,
                height = 265,
                line_length = 8,
                animation_speed = 0.3
            }
        }
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -4.0}}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/gas-separator.ogg"},
        idle_sound = {filename = "__pyfusionenergy__/sounds/gas-separator.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}
