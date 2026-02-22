RECIPE {
    type = "recipe",
    name = "diamond-mine",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "iron-plate",           amount = 60}, --bobs titanium plate
        {type = "item", name = "electric-engine-unit", amount = 15},
        {type = "item", name = "nbfe-alloy",           amount = 30},
        {type = "item", name = "steel-plate",          amount = 100},
        {type = "item", name = "advanced-circuit",     amount = 30} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {type = "item", name = "diamond-mine", amount = 1}
    }
}

if mods.pyrawores then
    RECIPE("diamond-mine"):replace_ingredient_unsafe("iron-plate", "titanium-plate")
end

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
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity"},
    --crafting_categories = {"rare-earth"},
    mining_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
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
    circuit_connector = circuit_connector_definitions["diamond-mine"],
    circuit_wire_max_distance = _G.default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
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
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/diamond-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/diamond-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
