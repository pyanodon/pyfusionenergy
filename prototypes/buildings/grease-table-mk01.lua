local pipe_bottom = {
    south = {
        filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/bottom.png",
        priority = "high",
        width = 247,
        height = 286
    }
}

RECIPE {
    type = "recipe",
    name = "grease-table-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "ground-borer", amount = 1},
        {type = "item", name = "iron-plate", amount = 60}, --bobs titanium plate
        {type = "item", name = "niobium-plate", amount = 10},
        {type = "item", name = "steel-plate", amount = 60},
        {type = "item", name = "advanced-circuit", amount = 20} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {type = "item", name = "grease-table-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "grease-table-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/grease-table-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "e",
    place_result = "grease-table-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "grease-table-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/grease-table-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "grease-table-mk01"},
    fast_replaceable_group = "grease-table",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"grease"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "500kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/left.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {-2.032, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/left-mask.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {-2.032, -1.0},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/mid.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {0.968, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/mid-mask.png",
                width = 96,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {0.968, -1.0},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/right.png",
                width = 55,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {3.329, -1.0}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/grease-table/right-mask.png",
                width = 55,
                height = 286,
                line_length = 21,
                frame_count = 140,
                animation_speed = 0.3,
                shift = {3.329, -1.0},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {-2.0, -3.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {0.0, -3.4}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, nil, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            base_level = -1,
            pipe_connections = {{flow_direction = "input", position = {2.0, -3.4}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.65, -4.95}, {0.5, 0.0}, {-0.5, 0.0}, pipe_bottom),
            pipe_connections = {{flow_direction = "output", position = {0.0, 3.4}, direction = defines.direction.south}}
        }

        --off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/grease-table.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/grease-table.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
