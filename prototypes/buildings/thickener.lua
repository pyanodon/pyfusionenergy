local Prototype = require("stdlib.prototype.prototype")

local pipes = {
    south =
    {
        filename = "__pyfusionenergy__/graphics/entity/thickener/bottom.png",
        priority = "extra-high",
        width = 237,
        height = 260,
    },
}

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "thickener",
    energy_required = 25,
    enabled = false,
    ingredients =
    {
        {"electric-engine-unit", 1},
        {"small-lamp", 4},
        {"electronic-circuit", 10}, --updated-bob basic-electronic-circuit-board
        {"steel-plate", 50}, 
        {"pipe", 15}, --updated-bob brass plate

    },
    result= "thickener",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "thickener",
    icon = "__pyfusionenergy__/graphics/icons/thickener.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "b",
    place_result = "thickener",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "thickener",
    icon = "__pyfusionenergy__/graphics/icons/thickener.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "thickener"},
    fast_replaceable_group = "thickener",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"thickener"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.07 / 3,
    },
    energy_usage = "400kW",
    ingredient_count = 4,

    animation ={
        layers={
            {
                filename = "__pyfusionenergy__/graphics/entity/thickener/thickener-bottom.png",
                width = 237,
                height = 132,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, 1.42},
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/thickener/thickener-top.png",
                width = 237,
                height = 128,
                line_length = 8,
                frame_count = 100,
                animation_speed = 1,
                shift = {0.19, -2.640},
            },
        }
    },

    fluid_boxes =
    {
        --1
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {1.19,-4.4}, nil, nil, pipes),
            pipe_covers = Prototype.Pipes.covers(false, true, false, false),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-1.0, 4.0} }}
        },
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {1.19,-4.4}, nil, nil, pipes),
            pipe_covers = Prototype.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{ type="output", position = {1.0, -4.0} }}
        },		
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {1.19,-4.4}, nil, nil, pipes),
            pipe_covers = Prototype.Pipes.covers(false, true, false, false),
            base_level = 1,
            pipe_connections = {{ type="output", position = {4.0, 1.0} }}
        },	
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/thickener.ogg", volume = 1.3 },
        idle_sound = { filename = "__pyfusionenergy__/sounds/thickener.ogg", volume = 0.95 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
