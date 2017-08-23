-------------------------------------------------------------------------------
--[[Recipes]]--
local recipe1={
    type = "recipe",
    name = "diamond-mine",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
        {"laser-turret", 4},
        {"iron-plate", 60}, --bobs titanium plate
        {"electric-engine-unit", 15},
        {"nbfe-alloy", 30},
        {"steel-plate", 100},		
        {"advanced-circuit", 30}, --updated-bob basic-electronic-circuit-board
    },
    result= "diamond-mine",
}
-------------------------------------------------------------------------------
--[[Items]]--
local item1={
    type = "item",
    name = "diamond-mine",
    icon = "__pyfusionenergy__/graphics/icons/diamond-mine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "py-fusion-buildings",
    order = "a",
    place_result = "diamond-mine",
    stack_size = 10,
}
-------------------------------------------------------------------------------
--[[Entites]]--
local entity1={
    type = "mining-drill",
    name = "diamond-mine",
    icon = "__pyfusionenergy__/graphics/icons/diamond-mine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "diamond-mine"},
	fast_replaceable_group = "diamond-mine",
    max_health = 600,
	resource_categories = {"volcanic-pipe"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    --crafting_categories = {"rare-earth"},
    mining_speed = 1,
    energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.00,
    },
    energy_usage = "650kW",
    mining_power = 6,
	resource_searching_radius = 0.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },

    animations =
    {
        filename = "__pyfusionenergy__/graphics/entity/diamond-mine/stand.png",
        width = 264,
        height = 224,
        frame_count = 1,
        --line_length = 10,
        --animation_speed = 1,
        shift = {0.0, -0.0},
    },

    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
        sound = { filename = "__pyfusionenergy__/sounds/diamond-mine.ogg", volume = 0.85 },
        idle_sound = { filename = "__pyfusionenergy__/sounds/diamond-mine.ogg", volume = 0.5 },
        apparent_volume = 2.5,
    },
}
-------------------------------------------------------------------------------
--[[Extend Data]]--
if recipe1 then data:extend({recipe1}) end
if item1 then data:extend({item1}) end
if entity1 then data:extend({entity1}) end
