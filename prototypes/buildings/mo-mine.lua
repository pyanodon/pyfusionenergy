RECIPE {
    type = "recipe",
    name = "mo-mine",
    energy_required = 10,
    enabled = false,
    ingredients = {
        {"laser-turret", 2},
        {"electric-mining-drill", 3}, --bobs titanium plate
        {"engine-unit", 4},
        {"nbfe-alloy", 30},
        {"steel-plate", 100},
        {"electronic-circuit", 30} --updated-bob basic-electronic-circuit-board
    },
    results = {
        {"mo-mine", 1}
    }
}

ITEM {
    type = "item",
    name = "mo-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/mo-mine.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-fusion-buildings-miners",
    order = "a",
    place_result = "mo-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "mo-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/mo-mine.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "mo-mine"},
    fast_replaceable_group = "mo-mine",
    max_health = 600,
    resource_categories = {"molybdenum"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    --crafting_categories = {"rare-earth"},
    mining_speed = 3.5,
    energy_source =
    {
      type = "burner",
      fuel_category = "drill",
      effectivity = 8,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
      smoke =
      {
        {
            name = "turbine-smoke",
            north_position = {0.0, -2.0},
            south_position = {0.0, -2.0},
            east_position = {0.0, -2.0},
            west_position = {0.0, -2.0},
            frequency = 20,
            starting_vertical_speed = 0.1,
            slow_down_factor = 1,
            starting_frame_deviation = 60
          }
      },
    },
    energy_usage = "550kW",
    mining_power = 1.5,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/mo-mine/left.png",
                width = 111,
                height = 275,
                line_length = 18,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(-55, -26)
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/mo-mine/right.png",
                width = 113,
                height = 275,
                line_length = 18,
                frame_count = 120,
                animation_speed = 0.2,
                shift = util.by_pixel(54, -26)
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/mo-mine/sh-1.png",
                width = 144,
                height = 182,
                line_length = 14,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.2,
                shift = util.by_pixel(-33, 23)
            },
            {
                filename = "__pyfusionenergygraphics__/graphics/entity/mo-mine/sh-2.png",
                width = 145,
                height = 182,
                line_length = 14,
                frame_count = 120,
                draw_as_shadow = true,
                animation_speed = 0.2,
                shift = util.by_pixel(72, 23)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 0.7},
        apparent_volume = 2.5
    }
}
