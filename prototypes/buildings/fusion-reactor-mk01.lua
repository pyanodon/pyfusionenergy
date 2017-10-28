local Prototype = require("stdlib.prototype.prototype")

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "fusion-reactor-mk01",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
        {"vacuum-pump", 5},
		{"mixer", 1},
        {"advanced-circuit", 50},
        {"steel-plate", 120},
        {"gasturbinemk03", 1},
        {"super-alloy", 200},
		--add glass

    },
    result= "fusion-reactor-mk01",
    icon = "__pyfusionenergy__/graphics/icons/fusion-reactor-mk01.png",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1= {
    type = "item",
    name = "fusion-reactor-mk01",
    icon = "__pyfusionenergy__/graphics/icons/fusion-reactor-mk01.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-reactors",
    order = "a",
    place_result = "fusion-reactor-mk01",
    stack_size = 5,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "fusion-reactor-mk01",
    icon = "__pyfusionenergy__/graphics/icons/fusion-reactor-mk01.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "fusion-reactor-mk01"},
    fast_replaceable_group = "fusion-reactor-mk01",
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
    crafting_categories = {"fusion-01"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.00,
    },
    energy_usage = "800kW",
    ingredient_count = 8,

    animation =
    {
        filename = "__pyfusionenergy__/graphics/entity/fusion-reactor-mk01/off.png",
        width = 345,
        height = 331,
        frame_count = 1,
        --line_length = 10,
        --animation_speed = 1,
        shift = {0.4, -0.2},
    },
    working_visualisations =
    {
        {
            north_position = {-0.49, -1.282},
            west_position = {-0.49, -1.282},
            south_position = {-0.49, -1.282},
            east_position = {-0.49, -1.282},
            animation =
            {
                filename = "__pyfusionenergy__/graphics/entity/fusion-reactor-mk01/on.png",
                frame_count = 50,
                line_length = 7,
                width = 288,
                height = 196,
                animation_speed = 0.5
            }
        },

    },

    fluid_boxes =
    {
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-0.5, -5.5} }}
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-2.5, -5.5} }}
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-4.5, -5.5} }}
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1.5, -5.5} }}
        },
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {3.5, -5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{ type="output" , position = {0.5, 5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{ type="output" , position = {4.5, 5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{ type="output" , position = {2.5, 5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{ type="output" , position = {-1.5, 5.5} }}
        },
        {
            production_type = "output",
            pipe_covers = Prototype.Pipes.covers(false, true, true, true),
            base_level = 1,
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-2", nil, {-0.0, -0.97}, {0.5, -0.0}, {-0.5, 0.0}),
            pipe_connections = {{ type="output" , position = {-3.5, 5.5} }}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/fusion-reactor-mk01.ogg", volume = 1.5 },
        idle_sound = { filename = "__pyfusionenergy__/sounds/fusion-reactor-mk01.ogg", volume = 0.85 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
