Recipe {
    type = "recipe",
    name = "secondary-crusher",
    energy_required = 25,
    enabled = false,
    ingredients = {
        {"electric-engine-unit", 1},
        {"small-lamp", 1},
        {"electronic-circuit", 25}, --updated-bob electronic-logic-board
        {"nbfe-alloy", 30},
        {"steel-plate", 40}
    },
    results = {
        {"secondary-crusher", 1}
    }
}

Item {
    type = "item",
    name = "secondary-crusher",
    icon = "__pyfusionenergy__/graphics/icons/secondary-crusher.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "b",
    place_result = "secondary-crusher",
    stack_size = 10
}

Entity {
    type = "assembling-machine",
    name = "secondary-crusher",
    icon = "__pyfusionenergy__/graphics/icons/secondary-crusher.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "secondary-crusher"},
    fast_replaceable_group = "secondary-crusher",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"secondary-crusher"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.07 / 8
    },
    energy_usage = "450kW",
    ingredient_count = 4,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergy__/graphics/entity/secondary-crusher/left.png",
                width = 128,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {-1.657, -0.281}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/secondary-crusher/right.png",
                width = 108,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {2.03, -0.281}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/secondary-crusher.ogg", volume = 1.1},
        idle_sound = {filename = "__pyfusionenergy__/sounds/secondary-crusher.ogg", volume = 0.60},
        apparent_volume = 2.5
    }
}
