RECIPE {
    type = "recipe",
    name = "regolite-mine",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "soil-extractor-mk01", amount = 2},
        {type = "item", name = "iron-plate", amount = 60}, --bobs tungsten-plate
        {type = "item", name = "jaw-crusher", amount = 1},
        {type = "item", name = "nbfe-alloy", amount = 20},
        {type = "item", name = "super-alloy", amount = 50},
        {type = "item", name = "advanced-circuit", amount = 40} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {type = "item", name = "regolite-mine", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "regolite-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/regolite-mine.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "a",
    place_result = "regolite-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "regolite-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/regolite-mine.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "regolite-mine"},
    fast_replaceable_group = "regolite-mine",
    max_health = 600,
    resource_categories = {"regolite"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity"},
    mining_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
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
    circuit_wire_connection_points = circuit_connector_definitions["regolite-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["regolite-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animations = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/regolite-mine/regolite-left.png",
                    width = 96,
                    height = 250,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.3,
                    shift = {-1.9, -0.2}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/regolite-mine/regolite-mid.png",
                    width = 96,
                    height = 250,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.3,
                    shift = {1.1, -0.2}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/regolite-mine/regolite-right.png",
                    width = 48,
                    height = 250,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.3,
                    shift = {3.324, -0.2}
                }
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
