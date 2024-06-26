RECIPE {
    type = "recipe",
    name = "bio-reactor-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"mixer-mk01", 1},
        {"gasturbinemk02", 1},
        {"chemical-plant-mk01", 2},
        {"super-alloy", 35},
        {"steel-plate", 30}
        --add glass
    },
    results = {
        {"bio-reactor-mk01", 1}
    }
}

ITEM {
    type = "item",
    name = "bio-reactor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/bio-reactor.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "d",
    place_result = "bio-reactor-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "bio-reactor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/bio-reactor.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "bio-reactor-mk01"},
    fast_replaceable_group = "bio-reactor",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-reactor"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "400kW",
    animation = {
        filename = "__pyfusionenergygraphics__/graphics/entity/bio-reactor/off.png",
        width = 246,
        height = 236,
        frame_count = 1,
        shift = {0.312, -0.218}
    },
    working_visualisations = {
        {
            north_position = {0.312, -0.218},
            west_position = {0.312, -0.218},
            south_position = {0.312, -0.218},
            east_position = {0.312, -0.218},
            animation = {
                filename = "__pyfusionenergygraphics__/graphics/entity/bio-reactor/on.png",
                frame_count = 50,
                width = 246,
                height = 236,
                line_length = 8,
                animation_speed = 0.3,
                priority = "medium"
            }
        }
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1.0, -4.0}}},
            priority = "extra-high"
        },
        --North2
        {
            production_type = "output",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1.0, -4.0}}},
            priority = "extra-high"
        },
        --South
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1.0, 4.0}}},
            priority = "extra-high"
        },
        --South2
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = py.pipe_covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1.0, 4.0}}},
            priority = "extra-high"
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 1.2},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/bio-reactor.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
