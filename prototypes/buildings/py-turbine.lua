local Prototype = require("stdlib.prototype.prototype")

local pipe_pictures = function(shift_north, shift_south, shift_west, shift_east)
    local north, south, east, west
    if shift_south then
        south =
        {
            filename = "__pyfusionenergy__/graphics/entity/py-turbine/bottom.png",
            priority = "extra-high",
            width = 170,
            height = 178,
            shift = shift_south
        }
    else
        south = Prototype.empty_sprite()
    end
        west = Prototype.empty_sprite()
        north = Prototype.empty_sprite()
        east = Prototype.empty_sprite()
    return {north=north, south=south, west=west, east=east}
end

-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "py-turbine",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
        {"gasturbinemk03", 2},
        {"niobium-pipe", 20},
    },
    result= "py-turbine",
    --icon = "__pyfusionenergy__/graphics/icons/py-turbine.png",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "py-turbine",
    icon = "__pyfusionenergy__/graphics/icons/py-turbine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-reactors",
    order = "b",
    place_result = "py-turbine",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "generator",
    name = "py-turbine",
    icon = "__pyfusionenergy__/graphics/icons/py-turbine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "py-turbine"},
    max_health = 500,
    corpse = "big-remnants",
    effectivity = 1.5,
    fluid_usage_per_tick = 0.6,
    maximum_temperature = 4000,
    resistances =
    {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_input = {
        name = "pressured-steam",
        amount = 0.0,
        minimum_temperature = 1000.0
    },
    fluid_box ={
        base_area = 1,
        base_level = -1,
        pipe_covers = Prototype.Pipes.covers(false, true, true, true),
		pipe_picture=pipe_pictures({0,0}, {0,0}, {0,0}, {0,0}),
        production_type = "input-output",
        pipe_connections =
        {
            {type = "input-output", position = {3.0, 0.0} },
            {type = "input-output", position = {-3.0, 0.0} },
        },
    },

    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-output",
        emissions = 0.04,
    },
    --scale=1.75,
    horizontal_animation =
    {
        filename = "__pyfusionenergy__/graphics/entity/py-turbine/py-turbine.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.1, -0.0},
    },
    vertical_animation =
    {
        filename = "__pyfusionenergy__/graphics/entity/py-turbine/py-turbine.png",
        width = 170,
        height = 178,
        frame_count = 40,
        line_length = 10,
        shift = {0.1, -0.0},
    },

    smoke =
    {
        {
            name = "turbine-smoke",
            north_position = {-0.0, -2},
            east_position = {-0.0, -2},
            frequency = 10 / 32,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
        },
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    match_speed_to_activity = true,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/py-turbine.ogg" },
        idle_sound = { filename = "__pyfusionenergy__/sounds/py-turbine.ogg", volume = 0.65 },
        apparent_volume = 2.5,
    }
}

-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
