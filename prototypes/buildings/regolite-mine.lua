RECIPE {
    type = "recipe",
    name = "regolite-mine",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"soil-extractormk01", 2},
        {"iron-plate", 60}, --bobs tungsten-plate
        {"jaw-crusher", 1},
        {"nbfe-alloy", 20},
        {"super-alloy", 50},
        {"advanced-circuit", 40} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {"regolite-mine", 1}
    }
}

ITEM {
    type = "item",
    name = "regolite-mine",
    icon = "__pyfusionenergy__/graphics/icons/regolite-mine.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "a",
    place_result = "regolite-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "regolite-mine",
    icon = "__pyfusionenergy__/graphics/icons/regolite-mine.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "regolite-mine"},
    fast_replaceable_group = "regolite-mine",
    max_health = 600,
    resource_categories = {"regolite"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    mining_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01
    },
    energy_usage = "770kW",
    mining_power = 4,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyfusionenergy__/graphics/entity/regolite-mine/regolite-left.png",
                width = 96,
                height = 250,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {-1.9, -0.2}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/regolite-mine/regolite-mid.png",
                width = 96,
                height = 250,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {1.1, -0.2}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/regolite-mine/regolite-right.png",
                width = 48,
                height = 250,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {3.324, -0.2}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/regolite-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergy__/sounds/regolite-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
