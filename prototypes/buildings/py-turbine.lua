RECIPE {
    type = "recipe",
    name = "py-turbine",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "gasturbinemk03", amount = 2},
        {type = "item", name = "pipe", amount = 20} --pyindustry niobium-pipe
    },
    results = {
        {type = "item", name = "py-turbine", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "py-turbine",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-turbine.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-reactors",
    order = "x",
    place_result = "py-turbine",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "py-turbine",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-turbine.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "py-turbine"},
    max_health = 500,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 33.33,
    maximum_temperature = 5000,
    destroy_non_fuel_fluid = false,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box = {
        filter = "pressured-steam",
        minimum_temperature = 500,
        volume = 100,
        pipe_covers = py.pipe_covers(false, true, true, true),
        --pipe_picture = pipe_pictures({0, 3}),
        production_type = "input-output",
        pipe_connections = {
            {flow_direction = "input-output", position = {2.4, 0.0}, direction = defines.direction.east},
            {flow_direction = "input-output", position = {-2.4, 0.0}, direction = defines.direction.west}
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
        emissions_per_minute = {
            pollution = 0.02
        },
    },
    --scale=1.75,
    horizontal_animation = {
        filename = "__pyfusionenergygraphics__/graphics/entity/py-turbine/py-turbine-horizontal.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.05, -0.0}
    },
    vertical_animation = {
        filename = "__pyfusionenergygraphics__/graphics/entity/py-turbine/py-turbine-vertical.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.05, -0.0}
    },
    smoke = {
        {
            name = "turbine-smoke",
            north_position = {-0.0, -2},
            east_position = {-0.0, -2},
            frequency = 10 / 32,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        }
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    match_speed_to_activity = true,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/py-turbine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
