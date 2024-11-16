local pipe_left = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/top-left.png",
        priority = "low",
        width = 276,
        height = 268
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/bottom-right.png",
        priority = "high",
        width = 276,
        height = 268
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/right-top.png",
        priority = "high",
        width = 276,
        height = 268
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/left-bottom.png",
        priority = "high",
        width = 276,
        height = 268
        --shift = {0.0, -0.2},
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/top-right.png",
        priority = "low",
        width = 276,
        height = 268
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/bottom-left.png",
        priority = "high",
        width = 276,
        height = 268
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/right-bottom.png",
        priority = "high",
        width = 276,
        height = 268
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/jig/left-top.png",
        priority = "high",
        width = 276,
        height = 268
    }
}

RECIPE {
    type = "recipe",
    name = "jig-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "jig-mk02",             amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 6},
        {type = "item", name = "processing-unit",      amount = 10}
    },
    results = {
        {type = "item", name = "jig-mk03", amount = 1}
    },
}

ITEM {
    type = "item",
    name = "jig-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/jig-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "d",
    place_result = "jig-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "jig-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/jig-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "jig-mk03"},
    fast_replaceable_group = "jig",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"jig"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1400kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.48, 0.417},
                west_position = {0.48, 0.417},
                south_position = {0.48, 0.417},
                east_position = {0.48, 0.417},
                animation = {
                    layers = {
                        {
                            filename = "__pyfusionenergygraphics__/graphics/entity/jig/on.png",
                            frame_count = 120,
                            line_length = 12,
                            width = 160,
                            height = 192,
                            animation_speed = 0.4
                        },
                        {
                            filename = "__pyfusionenergygraphics__/graphics/entity/jig/on-mask.png",
                            frame_count = 120,
                            line_length = 12,
                            width = 160,
                            height = 192,
                            animation_speed = 0.4,
                            tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                        }
                    }
                }
            }
        },
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/jig/off.png",
                    width = 276,
                    height = 268,
                    frame_count = 1,
                    shift = {0.3, -0.2}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/jig/off-mask.png",
                    width = 276,
                    height = 268,
                    frame_count = 1,
                    shift = {0.3, -0.2},
                    tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {1.8, 4.3}, {-1.2, -4.65}, {4.8, -1.7}, {-4.27, 1.3}, pipe_left),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.5, -3.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", {1.8, 4.3}, {-1.2, -4.65}, {4.8, -1.7}, {-4.27, 1.3}, pipe_left),
            pipe_connections = {{flow_direction = "output", position = {1.5, 3.5}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {-1.2, 4.3}, {1.8, -4.65}, {4.8, 1.3}, {-4.27, -1.8}, pipe_right),
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.5, -3.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, false, false),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", {-1.2, 4.3}, {1.8, -4.65}, {4.8, 1.3}, {-4.27, -1.8}, pipe_right),
            pipe_connections = {{flow_direction = "output", position = {-1.5, 3.5}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/jig.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/jig.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
