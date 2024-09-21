data:extend{{
    type = "autoplace-control",
    name = "volcanic-pipe",
    richness = true,
    order = "r-vo",
    category = "resource"
}}

-- data:extend{{
--     type = "noise-layer",
--     name = "volcanic-pipe"
-- }}

data:extend{
    {
        type = "noise-expression",
        name = "py_volcanic_pipe_starting_area",
        -- 0% chance of spawning in starting area (tier == 0)
        -- Using this is equivalent to has_starting_area_placement = false
        expression = "clamp(var('tier'), 0, 1)"
    },
    {
        type = "noise-expression",
        name = "py_volcanic_pipe_desired_frequency",
        -- 1 in 48 chunks (each chunk is 64x64 tiles)
        expression = "1 / (48 * 64^2)"
    },
    {
        -- We return the chance of spawning on any given tile here
        type = "noise-expression",
        name = "py_volcanic_pipe",
        -- Our final chance, likely a very, very small decimal
        expression = [[
            py_volcanic_pipe_starting_area * py_volcanic_pipe_desired_frequency * var("control-setting:volcanic-pipe:frequency:multiplier")
        ]]
    },
    {
        -- We return the richness here, which is just the quantity the resource tile yields
        type = "noise-expression",
        name = "py_volcanic_pipe_richness",
        expression = "2^16 * var('distance') * var('control-setting:volcanic-pipe:richness:multiplier')"
    }
}

ENTITY {
    type = "resource",
    name = "volcanic-pipe",
    category = "volcanic-pipe",
    icon = "__pyfusionenergygraphics__/graphics/icons/ores/volcanic-pipe.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.152, g = 0.909, b = 1},
    highlight = true,
    map_grid = false,
    minable = {
        -- mining_particle = "volcanic-pipe-particle",
        mining_time = 4,
        results = {
            {type = "item", name = "kimberlite-rock", amount = 1}
        }
    },
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = {
        name = "volcanic-pipe",
        order = "b-volcanic-pipe",
        control = "volcanic-pipe",
        probability_expression = "py_volcanic_pipe",
        richness_expression = "py_volcanic_pipe_richness",
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyfusionenergygraphics__/graphics/entity/ores/volcanic-pipe.png",
            priority = "extra-high",
            width = 224,
            height = 224,
            frame_count = 1,
            variation_count = 1
        }
    }
}
