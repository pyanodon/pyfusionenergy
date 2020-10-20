RECIPE {
    type = "recipe",
    name = "plankton-farm",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"storage-tank", 1},
        {"stone-brick", 20},
        {"electronic-circuit", 5}, --updated-bob basic-electronic-circuit-board
        {"steel-plate", 50},
        {"niobium-plate", 15}
    },
    results = {
        {"plankton-farm", 1}
    }
}

ITEM {
    type = "item",
    name = "plankton-farm",
    icon = "__pyfusionenergygraphics__/graphics/icons/plankton-farm.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "b",
    place_result = "plankton-farm",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "plankton-farm",
    icon = "__pyfusionenergygraphics__/graphics/icons/plankton-farm.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "plankton-farm"},
    fast_replaceable_group = "plankton-farm",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed"},
    crafting_categories = {"plankton"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = -35,
    },
    energy_usage = "350kW",
    ingredient_count = 20,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/left.png",
                width = 128,
                height = 243,
                line_length = 16,
                frame_count = 126,
                animation_speed = 0.4,
                shift = {-1.54, -0.3}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/left-mask.png",
                width = 128,
                height = 243,
                line_length = 16,
                frame_count = 126,
                animation_speed = 0.4,
                shift = {-1.54, -0.3},
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/right.png",
                width = 113,
                height = 243,
                line_length = 16,
                frame_count = 126,
                animation_speed = 0.4,
                shift = {2.22, -0.3}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/plankton-farm/right-mask.png",
                width = 113,
                height = 243,
                line_length = 16,
                frame_count = 126,
                animation_speed = 0.4,
                shift = {2.22, -0.3},
                tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {0.0, 4.0}}
            }
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {1.0, -4.0}}
            }
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.93}, {0.5, 0.0}, {-0.5, 0.0}),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {-1.0, -4.0}}
            }
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/plankton-farm.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/plankton-farm.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
}
