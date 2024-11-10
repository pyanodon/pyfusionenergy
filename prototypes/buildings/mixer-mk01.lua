RECIPE {
    type = "recipe",
    name = "mixer-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "storage-tank",        amount = 1},
        {type = "item", name = "chemical-plant-mk01", amount = 2},
        {type = "item", name = "iron-plate",          amount = 30},
        {type = "item", name = "steel-plate",         amount = 50},
        {type = "item", name = "iron-gear-wheel",     amount = 30}
    },
    results = {
        {type = "item", name = "mixer-mk01", amount = 1}
    }
}:add_unlock("advanced-mining-facilities")

ITEM {
    type = "item",
    name = "mixer-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "g",
    place_result = "mixer-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "mixer-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/mixer-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "mixer-mk01"},
    fast_replaceable_group = "mixer",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"mixer"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "450kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer.png",
                    width = 246,
                    height = 233,
                    frame_count = 64,
                    line_length = 8,
                    animation_speed = 0.4,
                    shift = {0.312, -0.156}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/mixer/mixer-mask.png",
                    width = 246,
                    height = 233,
                    frame_count = 64,
                    line_length = 8,
                    animation_speed = 0.4,
                    shift = {0.312, -0.156},
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-2.0, -3.0}, direction = defines.direction.north}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {2.0, -3.0}, direction = defines.direction.north}}
        },
        --North3
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {0.0, -3.0}, direction = defines.direction.north}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.0, 3.0}, direction = defines.direction.south}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}}
        },
        --South3
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/mixer.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
