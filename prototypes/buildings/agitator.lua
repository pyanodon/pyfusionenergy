local pipes = {
    north = {
        filename = "__pyfusionenergy__/graphics/entity/agitator/top.png",
        priority = "low",
        width = 169,
        height = 168
    },
    south = {
        filename = "__pyfusionenergy__/graphics/entity/agitator/bottom.png",
        priority = "extra-high",
        width = 169,
        height = 168
    },
    west = {
        filename = "__pyfusionenergy__/graphics/entity/agitator/left.png",
        priority = "very-low",
        width = 169,
        height = 168
    },
    east = {
        filename = "__pyfusionenergy__/graphics/entity/agitator/right.png",
        priority = "extra-high",
        width = 169,
        height = 168
    }
}

RECIPE {
    type = "recipe",
    name = "agitator",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"electric-engine-unit", 3},
        {"iron-plate", 40}, --updated-bob glass
        {"electronic-circuit", 20}, --updated-bob basic-electronic-circuit-board
        {"steel-plate", 30},
        {"iron-gear-wheel", 40},
        {"plastic-bar", 30}
    },
    results = {
        {"agitator", 1}
    }
}

ITEM {
    type = "item",
    name = "agitator",
    icon = "__pyfusionenergy__/graphics/icons/agitator.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-fusion-buildings-mk01",
    order = "a",
    place_result = "agitator",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "agitator",
    icon = "__pyfusionenergy__/graphics/icons/agitator.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "agitator"},
    fast_replaceable_group = "agitator",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"agitator"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "200kW",
    ingredient_count = 10,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/agitator/agitator.png",
        width = 169,
        height = 160,
        frame_count = 50,
        line_length = 10,
        animation_speed = 1,
        shift = {0.1, -0.0}
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {3.0, -0.0}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 3.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3.0, -0.0}}}
        },
        {
            production_type = "output",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", {0.17, 2.85}, {0.18, -2.9}, {3.1, -0.15}, {-2.9, -0.2}, pipes),
            pipe_covers = DATA.Pipes.covers(false, true, true, false),
            base_level = 1,
            pipe_connections = {{type = "output", position = {0.0, -3.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/agitator.ogg", volume = 1.1},
        idle_sound = {filename = "__pyfusionenergy__/sounds/agitator.ogg", volume = 0.95},
        apparent_volume = 2.5
    }
}
