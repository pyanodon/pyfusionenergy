local pipes = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/nmf/bottom.png",
        priority = "extra-high",
        width = 232,
        height = 245
    }
}

RECIPE {
    type = "recipe",
    name = "nmf-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "nmf-mk03", amount = 1},
        --{type = "item", name = 'super-steel', amount = 30},
        --{type = "item", name = 'low-density-structure', amount = 15},
        --{type = "item", name = 'nbfe-alloy', amount = 20}
    },
    results = {
        {type = "item", name = "nmf-mk04", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "nmf-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/nmf-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "b",
    place_result = "nmf-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "nmf-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/nmf-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nmf-mk04"},
    fast_replaceable_group = "nmf",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"nmf"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "2000kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/nmf/left.png",
                    width = 128,
                    height = 245,
                    line_length = 15,
                    frame_count = 80,
                    animation_speed = 0.8,
                    shift = {-1.5, -0.0}
                }, {
                filename = "__pyfusionenergygraphics__/graphics/entity/nmf/left-mask.png",
                width = 128,
                height = 245,
                line_length = 15,
                frame_count = 80,
                animation_speed = 0.8,
                shift = {-1.5, -0.0},
                tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
            },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/nmf/right.png",
                    width = 104,
                    height = 245,
                    line_length = 15,
                    frame_count = 80,
                    animation_speed = 0.8,
                    shift = {2.1, -0.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/nmf/right-mask.png",
                    width = 104,
                    height = 245,
                    line_length = 15,
                    frame_count = 80,
                    animation_speed = 0.8,
                    shift = {2.1, -0.0},
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-3.0, 0.0}, direction = defines.direction.west}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {0.103, -4.05}, nil, nil, pipes),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {3.0, 0.0}, direction = defines.direction.east}}
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/nmf.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/nmf.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
