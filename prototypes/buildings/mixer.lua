local Pipes = require("stdlib.data.pipes")

local recipe1 = {
    type = "recipe",
    name = "mixer",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"storage-tank", 1}, --pyindustry py-tank-8000
        {"chemical-plant", 2},
        {"iron-plate", 30}, --updated-bob titanium-plate
        {"steel-plate", 50},
        {"iron-gear-wheel", 30} --updated-bob titanium-bearing
    },
    result = "mixer"
}

local item1 = {
    type = "item",
    name = "mixer",
    icon = "__pyfusionenergy__/graphics/icons/mixer.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "g",
    place_result = "mixer",
    stack_size = 10
}

local entity1 = {
    type = "assembling-machine",
    name = "mixer",
    icon = "__pyfusionenergy__/graphics/icons/mixer.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "mixer"},
    fast_replaceable_group = "mixer",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification = {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"mixer"},
    crafting_speed = 1,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01
    },
    energy_usage = "450kW",
    ingredient_count = 4,
    animation = {
        filename = "__pyfusionenergy__/graphics/entity/mixer/mixer.png",
        width = 246,
        height = 233,
        frame_count = 64,
        line_length = 8,
        animation_speed = 0.4,
        shift = {0.312, -0.156}
    },
    fluid_boxes = {
        --North
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-2.0, -4.0}}}
        },
        --North2
        {
            production_type = "output",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-0.0, -0.95}, nil, nil),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{type = "output", position = {2.0, -4.0}}}
        },
        --South
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2.0, 4.0}}}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0.0, 4.0}}}
        },
        --South3
        {
            production_type = "input",
            pipe_picture = Pipes.pictures("assembling-machine-3", nil, {-0.00, -0.95}, nil, nil),
            pipe_covers = Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2.0, 4.0}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyfusionenergy__/sounds/mixer.ogg"},
        idle_sound = {filename = "__pyfusionenergy__/sounds/mixer.ogg", volume = 0.75},
        apparent_volume = 2.5
    }
}

data:extend {recipe1, item1, entity1}
