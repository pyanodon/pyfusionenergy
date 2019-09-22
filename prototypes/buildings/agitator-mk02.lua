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
    name = "agitator-mk02",
    energy_required = 15,
    enabled = false,
    ingredients = {
                {"agitator-mk01", 1},
                {'duralumin', 15},
                {'lead-plate', 10},
                {'nexelit-plate', 15},
                {'advanced-circuit', 10}
            },
    results = {
        {"agitator-mk02", 1}
    }
}

ITEM {
    type = "item",
    name = "agitator-mk02",
    icon = "__pyfusionenergy__/graphics/icons/agitator-mk02.png",
	icon_size = 64,
    flags = {},
    subgroup = "py-fusion-buildings-mk02",
    order = "a",
    place_result = "agitator-mk02",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "agitator-mk02",
    icon = "__pyfusionenergy__/graphics/icons/agitator-mk02.png",
	icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "agitator-mk02"},
    fast_replaceable_group = "agitator",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"agitator"},
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "700kW",
    ingredient_count = 10,
    animation = {
		layers = {
			{
			filename = "__pyfusionenergy__/graphics/entity/agitator/agitator.png",
			width = 169,
			height = 160,
			frame_count = 50,
			line_length = 10,
			animation_speed = 1,
			shift = {0.1, -0.0}
			},
			{
			filename = "__pyfusionenergy__/graphics/entity/agitator/agitator-mask.png",
			width = 169,
			height = 160,
			frame_count = 50,
			line_length = 10,
			animation_speed = 1,
			shift = {0.1, -0.0},
			tint = {r = 1.0, g = 0.0, b = 0.0, a = 1.0},
			}
		}
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
