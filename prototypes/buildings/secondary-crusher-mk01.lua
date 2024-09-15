RECIPE {
    type = "recipe",
    name = "secondary-crusher-mk01",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "steam-engine", amount = 1},
        {type = "item", name = "small-lamp", amount = 1},
        {type = "item", name = "electronic-circuit", amount = 25}, --updated-bob electronic-logic-board
        {type = "item", name = "nbfe-alloy", amount = 30},
        {type = "item", name = "steel-plate", amount = 40}
    },
    results = {
        {type = "item", name = "secondary-crusher-mk01", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "secondary-crusher-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk01.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "b",
    place_result = "secondary-crusher-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "secondary-crusher-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk01.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "secondary-crusher-mk01"},
    fast_replaceable_group = "secondary-crusher",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"secondary-crusher"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "450kW",
    animation = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/left.png",
                width = 128,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {-1.657, -0.281}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/left-mask.png",
                width = 128,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {-1.657, -0.281},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/right.png",
                width = 108,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {2.03, -0.281}
            },
			{
                filename = "__pyfusionenergygraphics__/graphics/entity/secondary-crusher/right-mask.png",
                width = 108,
                height = 238,
                line_length = 16,
                frame_count = 90,
                animation_speed = 1,
                shift = {2.03, -0.281},
				tint = {r = 1.0, g = 1.0, b = 0.0, a = 1.0}
            }
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/secondary-crusher.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
