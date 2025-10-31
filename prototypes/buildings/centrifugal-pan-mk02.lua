local pipe_left = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/top-left.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/bottom-right.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/right-top.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/left-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

local pipe_right = {
    north = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/top-right.png",
        priority = "low",
        width = 320,
        height = 336
    },
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/bottom-left.png",
        priority = "high",
        width = 320,
        height = 336
    },
    east = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/right-bottom.png",
        priority = "high",
        width = 320,
        height = 336
    },
    west = {
        filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/left-top.png",
        priority = "high",
        width = 320,
        height = 336
    }
}

RECIPE {
    type = "recipe",
    name = "centrifugal-pan-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "centrifugal-pan-mk01", amount = 1},
        {type = "item", name = "engine-unit",          amount = 10},
        {type = "item", name = "nexelit-plate",        amount = 15},
        {type = "item", name = "advanced-circuit",     amount = 10}
    },
    results = {
        {type = "item", name = "centrifugal-pan-mk02", amount = 1}
    },
}

ITEM {
    type = "item",
    name = "centrifugal-pan-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/centrifugal-pan-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "d",
    place_result = "centrifugal-pan-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "centrifugal-pan-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/centrifugal-pan-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "centrifugal-pan-mk02"},
    fast_replaceable_group = "centrifugal-pan",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"pan"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1500kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.02, -0.22},
                west_position = {0.02, -0.22},
                south_position = {0.02, -0.22},
                east_position = {0.02, -0.22},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/on.png",
                    frame_count = 100,
                    line_length = 10,
                    width = 192,
                    height = 192,
                    animation_speed = 0.4
                }
            }
        },
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/off.png",
                    width = 320,
                    height = 328,
                    frame_count = 1,
                    shift = {0.02, -0.10}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/centrifugal-pan/off-mask.png",
                    width = 320,
                    height = 328,
                    frame_count = 1,
                    shift = {0.02, -0.10},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_picture = py.pipe_pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_connections = {{flow_direction = "output", position = {2.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_connections = {{flow_direction = "output", position = {-2.5, 4.5}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/centrifugal-pan.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/centrifugal-pan.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
