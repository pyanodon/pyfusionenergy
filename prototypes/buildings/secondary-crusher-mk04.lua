RECIPE {
    type = "recipe",
    name = "secondary-crusher-mk04",
    energy_required = 1,
    enabled = false,
    ingredients = {
        {type = "item", name = "secondary-crusher-mk03", amount = 1},
        --{type = "item", name = 'super-steel', amount = 30},
        --{type = "item", name = 'low-density-structure', amount = 15},
        --{type = "item", name = 'nbfe-alloy', amount = 20}
    },
    results = {
        {type = "item", name = "secondary-crusher-mk04", amount = 1}
    }
}

if mods.pyrawores then
    RECIPE("secondary-crusher-mk04"):add_ingredient_unsafe {type = "item", name = "nbti-alloy", amount = 10}:add_ingredient_unsafe {type = "item", name = "wall-shield", amount = 4}:add_ingredient_unsafe {type = "item", name = "control-unit", amount = 3}
end

if mods.pyhightech then
    RECIPE("secondary-crusher-mk04"):replace_ingredient_unsafe("control-unit", "intelligent-unit"):add_ingredient_unsafe {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient_unsafe {type = "item", name = "pi-josephson-junction", amount = 4}
end

ITEM {
    type = "item",
    name = "secondary-crusher-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk04",
    order = "b",
    place_result = "secondary-crusher-mk04",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "secondary-crusher-mk04",
    icon = "__pyfusionenergygraphics__/graphics/icons/secondary-crusher-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "secondary-crusher-mk04"},
    fast_replaceable_group = "secondary-crusher",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    crafting_categories = {"secondary-crusher"},
    crafting_speed = 4,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "1950kW",
    graphics_set = {
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
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
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0}
                }
            }
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/secondary-crusher.ogg", volume = 1.1},
        apparent_volume = 2.5
    }
}
