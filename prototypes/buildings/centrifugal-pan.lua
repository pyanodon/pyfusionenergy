local Prototype = require("stdlib.prototype.prototype")

local pipe_left = {
    north =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-left.png",
        priority = "low",
        width = 320,
        height = 336,
    },
    south =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-right.png",
        priority = "high",
        width = 320,
        height = 336,
    },
    east =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-top.png",
        priority = "high",
        width = 320,
        height = 336,
    },
    west =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-bottom.png",
        priority = "high",
        width = 320,
        height = 336,
    },
}

local pipe_right = {
    north =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/top-right.png",
        priority = "low",
        width = 320,
        height = 336,
    },
    south =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/bottom-left.png",
        priority = "high",
        width = 320,
        height = 336,
    },
    east =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/right-bottom.png",
        priority = "high",
        width = 320,
        height = 336,
    },
    west =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/left-top.png",
        priority = "high",
        width = 320,
        height = 336,
    },
}

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "centrifugal-pan",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
        {"vacuum-pump", 3},
		{"mixer", 1},
        {"advanced-circuit", 25},
        {"steel-plate", 20},
        {"tailings-pond", 1},
        {"pipe", 40}, --updated-bob titanium-pipe

    },
    result= "centrifugal-pan",
    icon = "__pyfusionenergy__/graphics/icons/centrifugal-pan.png",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1= {
    type = "item",
    name = "centrifugal-pan",
    icon = "__pyfusionenergy__/graphics/icons/centrifugal-pan.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "d",
    place_result = "centrifugal-pan",
    stack_size = 5,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "centrifugal-pan",
    icon = "__pyfusionenergy__/graphics/icons/centrifugal-pan.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "centrifugal-pan"},
    fast_replaceable_group = "centrifugal-pan",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.8, -4.8}, {4.8, 4.8}},
    selection_box = {{-5.0, -5.0}, {5.0, 5.0}},
    module_specification =
    {
        module_slots = 6
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"pan"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01 / 4,
    },
    energy_usage = "480kW",
    ingredient_count = 6,

    animation =
    {
        filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/off.png",
        width = 320,
        height = 328,
        frame_count = 1,
        --line_length = 10,
        --animation_speed = 1,
        shift = {0.02, -0.10},
    },
    working_visualisations =
    {
        {
            north_position = {0.02, -0.22},
            west_position = {0.02, -0.22},
            south_position = {0.02, -0.22},
            east_position = {0.02, -0.22},
            animation =
            {
                filename = "__pyfusionenergy__/graphics/entity/centrifugal-pan/on.png",
                frame_count = 100,
                line_length = 10,
                width = 192,
                height = 192,
                animation_speed = 0.2
            }
        },

    },

    fluid_boxes =
    {
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-2.5, -5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", {2.5, 5.3}, {-1.5, -5.7}, {5.5, -2.5}, {-5.5, 2.4}, pipe_left),
            pipe_connections = {{ type="output" , position = {2.5, 5.5} }}
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {2.5, -5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {2.5, -5.7}, {5.5, 2.5}, {-5.5, -2.5}, pipe_right),
            pipe_connections = {{ type="output" , position = {-2.5, 5.5} }}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/centrifugal-pan.ogg" },
        idle_sound = { filename = "__pyfusionenergy__/sounds/centrifugal-pan.ogg", volume = 0.65 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end