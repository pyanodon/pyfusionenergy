RECIPE {
    type = "recipe",
    name = "fusion-reactor-mk02",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"fusion-reactor-mk01", 1},
        {"mixer-mk02", 1},
        {"advanced-circuit", 50},
        {"niobium-plate", 100},
        {"super-alloy", 50}
    },
    results = {
        {"fusion-reactor-mk02", 1}
    },
}

ITEM {
    type = "item",
    name = "fusion-reactor-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-reactor-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-reactors",
    order = "a",
    place_result = "fusion-reactor-mk02",
    stack_size = 5
}

ENTITY {
    type = "assembling-machine",
    name = "fusion-reactor-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-reactor-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fusion-reactor-mk02"},
    fast_replaceable_group = "fusion-reactor-mk02",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"fusion-02"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "1500kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/fusion-reactor-mk02/off.png",
                priority = "high",
                width = 321,
                height = 361,
                --apply_projection = false,
                frame_count = 1,
                --line_length = 10,
                --animation_speed = 0.7,
                shift = {0.0, -0.687}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/fusion-reactor-mk02/shadow.png",
                priority = "low",
                width = 339,
                height = 361,
                --apply_projection = false,
                frame_count = 1,
                --line_length = 8,
                --animation_speed = 0.7,
                shift = {0.2, -0.687},
                draw_as_shadow = true
            }
        }
    },
    working_visualisations = {
        {
            north_position = {0.0, -0.58},
            west_position = {0.0, -0.58},
            south_position = {0.0, -0.58},
            east_position = {0.0, -0.58},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/fusion-reactor-mk02/on.png",
                frame_count = 42,
                line_length = 6,
                width = 321,
                height = 288,
                animation_speed = 0.5
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-0.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-4.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.5, -5.5}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.5, -5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{type = "output", position = {0.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{type = "output", position = {4.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{type = "output", position = {2.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{type = "output", position = {-1.5, 5.5}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{type = "output", position = {-3.5, 5.5}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/fusion-reactor-mk02.ogg", volume = 1.5},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/fusion-reactor-mk02.ogg", volume = 0.85},
        apparent_volume = 2.5
    }
}
