RECIPE {
    type = "recipe",
    name = "automated-screener",
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
        {"automated-screener", 1}
    }
}

ITEM {
    type = "item",
    name = "automated-screener",
    icon = "__pyfusionenergy__/graphics/icons/automated-screener.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "d",
    place_result = "automated-screener",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "automated-screener",
    icon = "__pyfusionenergy__/graphics/icons/automated-screener.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "automated-screener"},
    fast_replaceable_group = "automated-screener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"screener"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    animation = {
        layers = {
            {
                filename = "__pyfusionenergy__/graphics/entity/automated-screener/left.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {-2.032, -0.5}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/automated-screener/mid.png",
                width = 96,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {0.968, -0.5}
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/automated-screener/right.png",
                width = 38,
                height = 256,
                line_length = 21,
                frame_count = 150,
                animation_speed = 0.3,
                shift = {3.032, -0.5}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/automated-screener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergy__/sounds/automated-screener.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
}
