local Prototype = require("stdlib.prototype.prototype")

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "xyhiphoe-pool",
    energy_required = 25,
    enabled = false,
    ingredients =
    {
        {"ralesia-plantation", 1},
        {"pump", 4},
        {"advanced-circuit", 20}, --updated-bob electronic-circuit-board
        {"steel-plate", 40},
        {"niobium-pipe", 10}, --updated-bob brass plate

    },
    result= "xyhiphoe-pool",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "xyhiphoe-pool",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-pool.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "b",
    place_result = "xyhiphoe-pool",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "xyhiphoe-pool",
    icon = "__pyfusionenergy__/graphics/icons/xyhiphoe-pool.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "xyhiphoe-pool"},
    fast_replaceable_group = "xyhiphoe-pool",
    max_health = 700,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.8, -3.8}, {3.8, 3.8}},
    selection_box = {{-4.0, -4.0}, {4.0, 4.0}},
    module_specification =
    {
        module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"xyhiphoe"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.02,
    },
    energy_usage = "650kW",
    ingredient_count = 3,

    animation ={
        layers={
            {
                filename = "__pyfusionenergy__/graphics/entity/xyhiphoe-pool/left.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {-2.532, -0.966},
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/xyhiphoe-pool/mid.png",
                width = 96,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {0.468, -0.966},
            },
            {
                filename = "__pyfusionenergy__/graphics/entity/xyhiphoe-pool/right.png",
                width = 82,
                height = 318,
                line_length = 21,
                frame_count = 100,
                animation_speed = 0.5,
                shift = {3.250, -0.966},
            },
        }
    },

    fluid_boxes =
    {
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {0.0,-0.90}, {0.5,0.0}, {-0.5,0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                { type="output", position = {-1.5, 4.5} },
            }
        },
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {0.0,-0.90}, {0.5,0.0}, {-0.5,0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_connections = {
                { type="output", position = {1.5, 4.5} },
            }
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {0.0,-0.90}, {0.5,0.0}, {-0.5,0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                { type="input", position = {-1.5, -4.5} },
            }
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {0.0,-0.90}, {0.5,0.0}, {-0.5,0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                { type="input", position = {1.5, -4.5} },
            }
        },
        off_when_no_fluid_recipe = true,
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/xyhiphoe-pool.ogg", volume = 1.3 },
        idle_sound = { filename = "__pyfusionenergy__/sounds/xyhiphoe-pool.ogg", volume = 0.95 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
