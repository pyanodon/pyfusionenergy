local Prototype = require("stdlib.prototype.prototype")

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "hydrocyclone",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
        {"niobium-pipe", 30},
        {"centrifuge", 1},
        {"iron-plate", 30},
        {"steel-plate", 30},
        {"iron-gear-wheel", 30}, --updated-bob titanium-bearing

    },
    result= "hydrocyclone",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "hydrocyclone",
    icon = "__pyfusionenergy__/graphics/icons/hydrocyclone.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "c",
    place_result = "hydrocyclone",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "assembling-machine",
    name = "hydrocyclone",
    icon = "__pyfusionenergy__/graphics/icons/hydrocyclone.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "hydrocyclone"},
    fast_replaceable_group = "hydrocyclone",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
        module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"hydrocyclone"},
    crafting_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.01,
    },
    energy_usage = "400kW",
    ingredient_count = 4,

    animation =
    {
        filename = "__pyfusionenergy__/graphics/entity/hydrocyclone/hydrocyclone-off.png",
        width = 270,
        height = 304,
        frame_count = 1,
        --animation_speed = 0.5,
        shift = {0.687, -1.281},
    },

    working_visualisations =
    {
        {
            north_position = {0.687, -1.281},
            west_position = {0.687, -1.281},
            south_position = {0.687, -1.281},
            east_position = {0.687, -1.281},
            animation =
            {
                filename = "__pyfusionenergy__/graphics/entity/hydrocyclone/hydrocyclone-on.png",
                frame_count = 1,
                width = 270,
                height = 304,
            }
        },
    },

    fluid_boxes =
    {
        --North
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.0,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{ type="output", position = {1.0, -4.0} }}
        },

        --North2
        {
            production_type = "output",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.0,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_level = 1,
            pipe_connections = {{ type="output", position = {-1.0, -4.0} }}
        },

        --South
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.00,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {-1.0, 4.0} }}
        },
        --South2
        {
            production_type = "input",
            pipe_picture = Prototype.Pipes.pictures("assembling-machine-3", nil, {-0.00,-0.95}, nil, nil),
            pipe_covers = Prototype.Pipes.covers(true, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{ type="input", position = {1.0, 4.0} }}
        },
	off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/hydrocyclone.ogg" },
        idle_sound = { filename = "__pyfusionenergy__/sounds/hydrocyclone.ogg", volume = 0.75 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
