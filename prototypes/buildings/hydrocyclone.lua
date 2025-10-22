--  we are using each fsm state to gradually fade in and out the static frame working png.
local function graphics_set(tint)
    local working_visualisations = {}
    for i = 1, 32 do -- FSM animations in factorio cannot exceed 32 states.
        local transparency_percent
        if i <= 16 then
            transparency_percent = i * 2 / 32
        else
            transparency_percent = (32 - i) / 16
        end

        local tint = table.deepcopy(tint)
        for k, v in pairs(tint) do tint[k] = v * transparency_percent end
        working_visualisations[i] = {
            draw_in_states = {tostring(i)},
            draw_when_state_filter_matches = true,
            always_draw = true,
            animation = {
                layers = {
                    {
                        filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on.png",
                        frame_count = 1,
                        width = 270,
                        height = 304,
                        shift = {0.687, -1.281},
                        tint = {transparency_percent, transparency_percent, transparency_percent, transparency_percent}
                    },
                    {
                        filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on-mask.png",
                        frame_count = 1,
                        width = 270,
                        height = 304,
                        tint = tint,
                        shift = {0.687, -1.281},
                    }
                }
            }
        }
    end

    local states = {}
    for i = 1, 32 do
        states[i] = {
            duration = (i == 1) and 1 or 2, -- idle state must have duration of 1
            name = tostring(i),
            next_active = tostring((i == 32) and 1 or (i + 1)),
            next_inactive = tostring((i == 32) and 1 or (i + 1)),
        }
    end
    states[1].next_inactive = "1"

    return {
        working_visualisations = working_visualisations,
        states = states,
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-off.png",
                    width = 270,
                    height = 304,
                    frame_count = 1,
                    shift = {0.687, -1.281}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-off-mask.png",
                    width = 270,
                    height = 304,
                    frame_count = 1,
                    shift = {0.687, -1.281},
                    tint = tint
                },
            }
        }
    }
end

for i = 1, 4 do
    if not mods.pyrawores and i == 2 then break end

    local name = "hydrocyclone-mk0" .. i
    local icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk0" .. i .. ".png"
    local icon_size = 64

    ITEM {
        type = "item",
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = "py-fusion-buildings-mk0" .. i,
        order = "c",
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
        fast_replaceable_group = "hydrocyclone",
        max_health = 300 * i,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        forced_symmetry = "diagonal-pos",
        module_slots = i,
        allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
        crafting_categories = {"hydrocyclone"},
        crafting_speed = i,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {
                pollution = 0.32 * i
            },
        },
        energy_usage = (400 * i) .. "kW",
        graphics_set = graphics_set(py.tints[i]),
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes = {
            --North
            {
                production_type = "output",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}}
            },
            --North2
            {
                production_type = "output",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "output", position = {-1.0, -3.0}, direction = defines.direction.north}}
            },
            --South
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {-1.0, 3.0}, direction = defines.direction.south}}
            },
            --South2
            {
                production_type = "input",
                pipe_picture = py.sexy_pipe_pictures(),
                pipe_picture_frozen = py.sexy_pipe_pictures_frozen(),
                pipe_covers = pipecoverspictures(),
                secondary_draw_orders = {north = -1, east = -1, west = -1},
                volume = 1000,
                pipe_connections = {{flow_direction = "input", position = {1.0, 3.0}, direction = defines.direction.south}}
            },
        },
        impact_category = "metal-large",
        working_sound = {
            sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg"},
            idle_sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone-idle.ogg", volume = 0.3},
            apparent_volume = 2.5
        }
    }
end

RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "pipe",            amount = 30}, --pyindustry niobium-pipe
        {type = "item", name = "steam-engine",    amount = 2},
        {type = "item", name = "iron-plate",      amount = 30},
        {type = "item", name = "steel-plate",     amount = 30},
        {type = "item", name = "iron-gear-wheel", amount = 30}
    },
    results = {
        {type = "item", name = "hydrocyclone-mk01", amount = 1}
    }
}

if not mods["pyrawores"] then return end

RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "hydrocyclone-mk01", amount = 1},
        {type = "item", name = "engine-unit",       amount = 3},
        {type = "item", name = "nexelit-plate",     amount = 15},
        {type = "item", name = "advanced-circuit",  amount = 10}
    },
    results = {
        {type = "item", name = "hydrocyclone-mk02", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk03",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "hydrocyclone-mk02",    amount = 1},
        {type = "item", name = "electric-engine-unit", amount = 4},
        {type = "item", name = "processing-unit",      amount = 10}
    },
    results = {
        {type = "item", name = "hydrocyclone-mk03", amount = 1}
    }
}

RECIPE {
    type = "recipe",
    name = "hydrocyclone-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "hydrocyclone-mk03", amount = 1},
    },
    results = {
        {type = "item", name = "hydrocyclone-mk04", amount = 1}
    }
}
