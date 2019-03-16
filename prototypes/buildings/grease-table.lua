local pipe_bottom = {
    south = {
        filename = "__pyfusionenergy__/graphics/entity/grease-table/bottom.png",
        priority = "high",
        width = 247,
        height = 286
    }
}

RECIPE {
    type = "recipe",
    name = "grease-table",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"ground-borer", 1},
        {"iron-plate", 60}, --bobs titanium plate
        {"electric-engine-unit", 10},
        {"niobium-plate", 10},
        {"steel-plate", 60},
        {"advanced-circuit", 20} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {"grease-table", 1}
    }
}

ITEM {
    type = "item",
    name = "grease-table",
    icon = "__pyfusionenergy__/graphics/icons/grease-table.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-fusion-buildings",
    order = "e",
    place_result = "grease-table",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "grease-table",
    icon = "__pyfusionenergy__/graphics/icons/grease-table.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "grease-table"},
    fast_replaceable_group = "grease-table",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"grease"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.001,
    },
    energy_usage = "500kW",
    ingredient_count = 4,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergy__/graphics/entity/grease-table/left.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {-2.032, -1.0}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/grease-table/mid.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {0.968, -1.0}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/grease-table/right.png",
                width = 55,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {3.329, -1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, -4.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, -4.0}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_connections = {{type = "output", position = {0.0, 4.0}}}
        }

        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/grease-table.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergy__/sounds/grease-table.ogg", volume = 0.85},
        apparent_volume = 2.5
    }
}
