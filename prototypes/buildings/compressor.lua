RECIPE {
    type = "recipe",
    name = "compressor",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"pipe", 20}, --pyindustry niobium-pipe
        {"evaporator", 1},
        {"engine-unit", 4},
        {"steel-plate", 30},
        {"iron-gear-wheel", 30} --updated-bob titanium-bearing
    },
    results = {
        {"compressor", 1}
    }
}

ITEM {
    type = "item",
    name = "compressor",
    icon = "__pyfusionenergy__/graphics/icons/compressor.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-fusion-buildings",
    order = "d",
    place_result = "compressor",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "compressor",
    icon = "__pyfusionenergy__/graphics/icons/compressor.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "compressor"},
    fast_replaceable_group = "compressor",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"compressor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "450kW",
    ingredient_count = 4,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/compressor/off.png",
        width = 261,
        height = 252,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.55, -0.45}
    },
    working_visualisations = {
        {
            north_position = {0.55, -0.45},
            west_position = {0.55, -0.45},
            south_position = {0.55, -0.45},
            east_position = {0.55, -0.45},
            animation = {
                filename = "__pyfusionenergy__/graphics/entity/compressor/on.png",
                frame_count = 50,
                width = 261,
                height = 252,
                line_length = 7,
                animation_speed = 0.5,
                priority = "medium"
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
            pipe_connections = {{type = "output", position = {2.0, -4.0}}},
            priority = "extra-high"
        },
        --North2
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 4.0}}},
            priority = "extra-high"
        },
        --South2
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}},
            priority = "extra-high"
        },
        --South3
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/compressor.ogg", volume = 0.7},
        idle_sound = {filename = "__pyfusionenergy__/sounds/compressor.ogg", volume = 0.5},
        apparent_volume = 2.5
    }
}
