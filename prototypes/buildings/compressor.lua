RECIPE {
    type = "recipe",
    name = "compressor-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",            amount = 20}, --pyindustry niobium-pipe
        {type = "item", name = "evaporator",      amount = 1},
        {type = "item", name = "steam-engine",    amount = 3},
        {type = "item", name = "steel-plate",     amount = 30},
        {type = "item", name = "iron-gear-wheel", amount = 30} --updated-bob titanium-bearing
    },
    results = {
        {type = "item", name = "compressor-mk01", amount = 1}
    }
}

local function working_visualizations(i)
    local working_visualizations = {
        {
            filename = "__pyfusionenergygraphics__/graphics/entity/compressor/on.png",
            frame_count = 50,
            width = 261,
            height = 252,
            line_length = 7,
            priority = "medium",
            shift = {0.55, -0.45}
        },
        {
            filename = "__pyfusionenergygraphics__/graphics/entity/compressor/on-mask.png",
            frame_count = 50,
            width = 261,
            height = 252,
            line_length = 7,
            priority = "medium",
            tint = py.tints[i],
            shift = {0.55, -0.45}
        }
    }
    return {{animation = {layers = working_visualizations}}}
end

for i = 1, 4 do
    if not mods.pyrawores and i == 2 then return end

    local name = "compressor-mk0" .. i
    local icon = "__pyfusionenergygraphics__/graphics/icons/" .. name .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-fusion-buildings-mk0" .. i,
        order = "d",
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = "assembling-machine",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.5, result = name},
        fast_replaceable_group = "compressor",
        max_health = 400 * i,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"compressor"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 3 * i
            },
        },
        energy_usage = i .. "MW",
        graphics_set = py.finite_state_machine_working_visualisations {
            states = {
                {
                    name = "idle",
                    next_active = "active",
                    next_inactive = "idle",
                    frame_sequence = {1},
                },
                {
                    name = "active",
                    next_active = "idle",
                    next_inactive = "idle",
                    frame_sequence = py.range(2, 50),
                },
            },
            working_visualisations = working_visualizations(i),
            shadow = {
                layers = {
                    {
                        filename = "__pyfusionenergygraphics__/graphics/entity/compressor/base.png",
                        width = 261,
                        height = 252,
                        frame_count = 1,
                        shift = {0.55, -0.45},
                    },
                    {
                        filename = "__pyfusionenergygraphics__/graphics/entity/compressor/sh.png",
                        width = 261,
                        height = 252,
                        frame_count = 1,
                        shift = {0.55, -0.45},
                        draw_as_shadow = true,
                    },
                }
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --North
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {2.0, -3.0}, direction = defines.direction.north}},
                priority = "extra-high"
            },
            --North2
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {0.0, -3.0}, direction = defines.direction.north}}
            },
            --North3
            {
                production_type = "output",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 100,
                pipe_connections = {{flow_direction = "output", position = {-2.0, -3.0}, direction = defines.direction.north}}
            },
            --South
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-2.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
            --South2
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {2.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
            --South3
            {
                production_type = "input",
                pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
                pipe_covers = py.pipe_covers(true, true, true, true),
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {0.0, 3.0}, direction = defines.direction.south}},
                priority = "extra-high"
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyfusionenergygraphics__/sounds/compressor.ogg", volume = 0.7},
            apparent_volume = 2.5
        }
    }
end

RECIPE {
    type = "recipe",
    name = "compressor-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "compressor-mk01",  amount = 1},
        {type = "item", name = "engine-unit",      amount = 3},
        {type = "item", name = "nexelit-plate",    amount = 15},
        {type = "item", name = "advanced-circuit", amount = 10}
    },
    results = {
        {type = "item", name = "compressor-mk02", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "compressor-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "compressor-mk02",      amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 6},
        {type = "item", name = "processing-unit",      amount = 10}
    },
    results = {
        {type = "item", name = "compressor-mk03", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "compressor-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "compressor-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "compressor-mk04", amount = 1}
    }
}
