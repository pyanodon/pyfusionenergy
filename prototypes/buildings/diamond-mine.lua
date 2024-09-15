RECIPE {
    type = "recipe",
    name = "diamond-mine",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {"iron-plate", 60}, --bobs titanium plate
        {"electric-engine-unit", 15},
        {"nbfe-alloy", 30},
        {"steel-plate", 100},
        {"advanced-circuit", 30} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {"diamond-mine", 1}
    }
}

ITEM {
    type = "item",
    name = "diamond-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/diamond-mine.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "a",
    place_result = "diamond-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "diamond-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/diamond-mine.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "diamond-mine"},
    fast_replaceable_group = "diamond-mine",
    max_health = 600,
    resource_categories = {"volcanic-pipe"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity"},
    --crafting_categories = {"rare-earth"},
    mining_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "2000kW",
    mining_power = 6,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["diamond-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["diamond-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/diamond-mine/diamond-left.png",
                width = 128,
                height = 224,
                line_length = 15,
                frame_count = 100,
                animation_speed = 0.2,
                shift = {-1.5, -0.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/diamond-mine/diamond-right.png",
                width = 136,
                height = 224,
                line_length = 15,
                frame_count = 100,
                animation_speed = 0.2,
                shift = {2.624, -0.0}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/diamond-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/diamond-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
