RECIPE {
    type = "recipe",
    name = "py-heat-exchanger-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"py-heat-exchanger-mk02", 1},
        {'processing-unit', 15},
        {"electric-engine-unit", 4},
    },
    results = {
        {"py-heat-exchanger-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "py-heat-exchanger-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-heat-exchanger-mk03.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "z",
    place_result = "py-heat-exchanger-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "py-heat-exchanger-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/py-heat-exchanger.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "py-heat-exchanger-mk03"},
    fast_replaceable_group = "py-heat-exchanger",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"heat-exchanger"},
    crafting_speed = 6,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "850kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/off.png",
                width = 224,
                height = 224,
                frame_count = 1,
                --animation_speed = 0.5,
                shift = {0.0, -0.2},
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/off-mask.png",
                width = 224,
                height = 224,
                frame_count = 1,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                shift = {0.0, -0.2},
            },
        },
    },
    working_visualisations = {
        {
            north_position = {0.0, -0.2},
            west_position = {0.0, -0.2},
            south_position = {0.0, -0.2},
            east_position = {0.0, -0.2},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/on.png",
                frame_count = 80,
                width = 224,
                height = 224,
                line_length = 9,
                animation_speed = 0.5
            }
        },
        {
            north_position = {0.0, -0.2},
            west_position = {0.0, -0.2},
            south_position = {0.0, -0.2},
            east_position = {0.0, -0.2},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/heat-exchanger/on-mask.png",
                frame_count = 80,
                width = 224,
                height = 224,
                tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
                line_length = 9,
                animation_speed = 0.5
            }
        },
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-4.0, 0.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {4.0, 0.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, {0.6, -0.1}, {-0.6, -0.1}),
            pipe_covers = DATA.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        }
        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/heat-exchanger.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/heat-exchanger.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
