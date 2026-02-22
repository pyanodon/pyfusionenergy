RECIPE {
    type = "recipe",
    name = "automated-screener-mk02",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "automated-screener-mk01", amount = 1},
        {type = "item", name = "engine-unit",             amount = 3},
        {type = "item", name = "nexelit-plate",           amount = 15},
        {type = "item", name = "advanced-circuit",        amount = 10}
    },
    results = {
        {type = "item", name = "automated-screener-mk02", amount = 1}
    }
}

if mods.pyrawores then
    RECIPE("automated-screener-mk02"):add_ingredient_unsafe {type = "item", name = "stainless-steel", amount = 25}
end

ITEM {
    type = "item",
    name = "automated-screener-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "d",
    place_result = "automated-screener-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "automated-screener-mk02",
    icon = "__pyfusionenergygraphics__/graphics/icons/automated-screener-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "automated-screener-mk02"},
    fast_replaceable_group = "automated-screener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"screener"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "800kW",
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left.png",
                    width = 96,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {-2.032, -0.5}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/left-mask.png",
                    width = 96,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {-2.032, -0.5},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid.png",
                    width = 96,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {0.968, -0.5}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/mid-mask.png",
                    width = 96,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {0.968, -0.5},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right.png",
                    width = 38,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {3.032, -0.5}
                },
                {
                    filename = "__pyfusionenergygraphics__/graphics/entity/automated-screener/right-mask.png",
                    width = 38,
                    height = 256,
                    line_length = 21,
                    frame_count = 150,
                    animation_speed = 0.4,
                    shift = {3.032, -0.5},
                    tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0}
                }
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 1.3},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/automated-screener.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
