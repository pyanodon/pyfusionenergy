RECIPE {
    type = "recipe",
    name = "fusion-reactor-mk01",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "vacuum-pump-mk01", amount = 5},
        {type = "item", name = "mixer-mk01",       amount = 1},
        {type = "item", name = "advanced-circuit", amount = 50},
        {type = "item", name = "steel-plate",      amount = 120},
        {type = "item", name = "gasturbinemk03",   amount = 1},
        {type = "item", name = "super-alloy",      amount = 200}
        --add glass
    },
    results = {
        {type = "item", name = "fusion-reactor-mk01", amount = 1}
    },
}

if mods.pyrawores then
    RECIPE("fusion-reactor-mk01"):add_ingredient_unsafe {type = "item", name = "glass", amount = 300}:add_ingredient_unsafe {type = "item", name = "super-steel", amount = 100}
end

if mods.pyhightech then
    RECIPE("fusion-reactor-mk01"):replace_ingredient("advanced-circuit", "processing-unit")
end

ITEM {
    type = "item",
    name = "fusion-reactor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-reactor-mk01.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-fusion-reactors",
    order = "a",
    place_result = "fusion-reactor-mk01",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "fusion-reactor-mk01",
    icon = "__pyfusionenergygraphics__/graphics/icons/fusion-reactor-mk01.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "fusion-reactor-mk01"},
    fast_replaceable_group = "fusion-reactor",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    forced_symmetry = "diagonal-pos",
    module_slots = 6,
    allowed_effects = {"speed", "productivity", "consumption", "pollution", "quality"},
    allowed_module_categories = {"productivity", "speed", "quality"},
    crafting_categories = {"fusion-01"},
    crafting_speed = 10,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = {
            pollution = 0.06
        },
    },
    energy_usage = "5GW",
    graphics_set = {
        working_visualisations = {
            {
                north_position = {-0.49, -1.282},
                west_position = {-0.49, -1.282},
                south_position = {-0.49, -1.282},
                east_position = {-0.49, -1.282},
                animation = {
                    filename = "__pyfusionenergygraphics__/graphics/entity/fusion-reactor-mk01/on.png",
                    frame_count = 50,
                    line_length = 7,
                    width = 288,
                    height = 196,
                    animation_speed = 0.5
                }
            }
        },
        animation = {
            filename = "__pyfusionenergygraphics__/graphics/entity/fusion-reactor-mk01/off.png",
            width = 345,
            height = 331,
            frame_count = 1,
            shift = {0.4, -0.2}
        },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-0.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-2.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {-4.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {1.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "input",
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 1000,
            pipe_connections = {{flow_direction = "input", position = {3.5, -4.5}, direction = defines.direction.north}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{flow_direction = "output", position = {0.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{flow_direction = "output", position = {4.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{flow_direction = "output", position = {2.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{flow_direction = "output", position = {-1.5, 4.5}, direction = defines.direction.south}}
        },
        {
            production_type = "output",
            pipe_covers = py.pipe_covers(false, true, true, true),
            volume = 100,
            pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{flow_direction = "output", position = {-3.5, 4.5}, direction = defines.direction.south}}
        },
    },
    impact_category = "metal-large",
    working_sound = {
        sound = {filename = "__pyfusionenergygraphics__/sounds/fusion-reactor-mk01.ogg", volume = 1.5},
        idle_sound = {filename = "__pyfusionenergygraphics__/sounds/fusion-reactor-mk01.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
