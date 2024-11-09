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
        {type = "item", name = "iron-gear-wheel", amount = 30} --updated-bob titanium-bearing
    },
    results = {
        {type = "item", name = "hydrocyclone-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "hydrocyclone-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "c",
    place_result = "hydrocyclone-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "hydrocyclone-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/hydrocyclone-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "hydrocyclone-mk01"},
    fast_replaceable_group = "hydrocyclone",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    forced_symmetry = "diagonal-pos",
    match_animation_speed_to_activity = false,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"hydrocyclone"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "400kW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {0.687, -1.281},
                west_position = {0.687, -1.281},
                south_position = {0.687, -1.281},
                east_position = {0.687, -1.281},
                animation = {
                    layers = {
                        {
                            filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on.png",
                            frame_count = 1,
                            width = 270,
                            height = 304
                        },
                        {
                            filename = "__pyfusionenergygraphics__/graphics/entity/hydrocyclone/hydrocyclone-on-mask.png",
                            frame_count = 1,
                            width = 270,
                            height = 304,
                            tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                        }
                    }
                }
            }
        },
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
                    tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
                },
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
            pipe_connections = {{flow_direction = "output", position = {1.0, -3.0}, direction = defines.direction.north}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 100,
            pipe_connections = {{flow_direction = "output", position = {-1.0, -3.0}, direction = defines.direction.north}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-1.0, 3.0}, direction = defines.direction.south}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.0, 3.0}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg"},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/hydrocyclone.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
