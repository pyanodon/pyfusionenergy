RECIPE({
    type = "recipe",
    name = "xyhiphoe-pool-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        { type = "item", name = "xyhiphoe-pool-mk02",   amount = 1 },
        { type = "item", name = "electric-engine-unit", amount = 4 },
        { type = "item", name = "processing-unit",      amount = 10 }
    },
    results = {
        { type = "item", name = "xyhiphoe-pool-mk03", amount = 1 }
    }
})

ITEM({
    type = "item",
    name = "xyhiphoe-pool-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk03",
    order = "b",
    place_result = "xyhiphoe-pool-mk03",
    stack_size = 10
})

ENTITY({
    type = "assembling-machine",
    name = "xyhiphoe-pool-mk03",
    icon = "__pyfusionenergygraphics__/graphics/icons/xyhiphoe-pool-mk03.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.5, result = "xyhiphoe-pool-mk03" },
    fast_replaceable_group = "xyhiphoe-pool",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = { { -3.8, -3.8 }, { 3.8, 3.8 } },
    selection_box = { { -4.0, -4.0 }, { 4.0, 4.0 } },
    forced_symmetry = "diagonal-pos",
    module_slots = 3,
    allowed_effects = { "speed", "productivity", "consumption", "pollution", "quality" },
    crafting_categories = { "xyhiphoe" },
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = -35
        },
    },
    energy_usage = "1650kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left.png",
                    width = 96,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { -2.532, -0.966 }
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/left-mask.png",
                    width = 96,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { -2.532, -0.966 },
                    tint = { r = 0.223, g = 0.490, b = 0.858, a = 1.0 }
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid.png",
                    width = 96,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { 0.468, -0.966 }
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/mid-mask.png",
                    width = 96,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { 0.468, -0.966 },
                    tint = { r = 0.223, g = 0.490, b = 0.858, a = 1.0 }
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right.png",
                    width = 82,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { 3.250, -0.966 }
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/xyhiphoe-pool/right-mask.png",
                    width = 82,
                    height = 318,
                    line_length = 21,
                    frame_count = 100,
                    animation_speed = 0.5,
                    shift = { 3.250, -0.966 },
                    tint = { r = 0.223, g = 0.490, b = 0.858, a = 1.0 }
                }
            }
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.90 }, { 0.5, 0.0 }, { -0.5, 0.0 }),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                { flow_direction = "output", position = { -1.5, 3.5 }, direction = defines.direction.south }
            }
        },
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, { 0.0, -0.90 }, { 0.5, 0.0 }, { -0.5, 0.0 }),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_connections = {
                { flow_direction = "output", position = { 1.5, 3.5 }, direction = defines.direction.south }
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, { 0.0, -0.90 }, { 0.5, 0.0 }, { -0.5, 0.0 }),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "input", position = { -1.5, -3.5 }, direction = defines.direction.north }
            }
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, { 0.0, -0.90 }, { 0.5, 0.0 }, { -0.5, 0.0 }),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {
                { flow_direction = "input", position = { 1.5, -3.5 }, direction = defines.direction.north }
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = { filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 1.3 },
        idle_sound = { filename = "__pyfusionenergygraphics__/sounds/xyhiphoe-pool.ogg", volume = 0.3 },
        apparent_volume = 2.5
    }
})
