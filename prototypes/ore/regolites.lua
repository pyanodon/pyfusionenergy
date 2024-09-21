data.raw.planet.nauvis.map_gen_settings.autoplace_controls["regolites"] = {}

data:extend{{
    type = "autoplace-control",
    name = "regolites",
    richness = true,
    order = "r-reg",
    category = "resource",
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "regolites"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_regolites_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier_from_start'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_regolites_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (48 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_regolites",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_regolites_starting_area * py_regolites_desired_frequency * var("control-setting:regolites:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_regolites_richness",
        expression = "2^16 * var('distance') * var('control-setting:regolites:richness:multiplier')"
    }
}

ENTITY {
    type = "resource",
    name = "regolites",
    category = "regolite",
    icon = "__pyfusionenergygraphics__/graphics/icons/ores/regolite-resource.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.917, g = 0.570, b = 0.378},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "regolites-particle",
        mining_time = 4,
        results = {
			{type = "item", name = "regolite-rock", amount = 1},
        }
    },
    resource_patch_search_radius = 12,
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "regolites",
        order = "b-regolites",
        control = "regolites",
        -- We return the chance of spawning on any given tile here
        probability_expression = "py_regolites",
        -- We return the richness here, which is just the quantity the resource tile yields
        richness_expression = "py_regolites_richness"
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyfusionenergygraphics__/graphics/entity/ores/regolite-resource.png",
            priority = "extra-high",
            width = 240,
            height = 250,
            frame_count = 1,
            variation_count = 1,
            shift = {0.35, -0.2}
        }
    }
}
