RECIPE {
    type = "recipe",
    name = "mo-mine",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "small-lamp", amount = 50},
        {type = "item", name = "electric-mining-drill", amount = 3},
        {type = "item", name = "engine-unit", amount = 4},
        {type = "item", name = "nbfe-alloy", amount = 30},
        {type = "item", name = "steel-plate", amount = 100},
        {type = "item", name = "electronic-circuit", amount = 30}
    },
    results = {
        {type = "item", name = "mo-mine", amount = 1}
    }
}

ITEM {
    type = "item",
    name = "mo-mine",
    icon = "__pyfusionenergygraphics__/graphics/icons/mo-mine.png",
	icon_size = 64,
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
	icon_size = 64,
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
    allowed_effects = {"consumption", "speed", "productivity"},
    --crafting_categories = {"rare-earth"},
    mining_speed = 3.5,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"drill"},
      effectivity = 8,
      fuel_inventory_size = 1,
      emissions_per_minute = {
          pollution = 0.06
      },
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
    circuit_wire_connection_points = circuit_connector_definitions["molybdenum-mine"].points,
    circuit_connector_sprites = circuit_connector_definitions["molybdenum-mine"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
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
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 1.0},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/regolite-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
