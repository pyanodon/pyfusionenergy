local autoplace = {
    type = "autoplace-control",
    name = "volcanic-pipe",
    richness = true,
    order = "b-e",
    category = "resource",
}
local noise = {
    type = "noise-layer",
    name = "volcanic-pipe"
}
local resource = {
    type = "resource",
    name = "volcanic-pipe",
    category = "volcanic-pipe",
    icon = "__pyfusionenergy__/graphics/icons/ores/volcanic-pipe.png",
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.917, g = 0.996, b = 1},
    highlight = true,
    minimum = 50000,
    normal = 70000,
    maximum = 12000,
    map_grid = false,
    minable = {
        hardness = 3.5,
        -- mining_particle = "volcanic-pipe-particle",
        mining_time = 4,
        result = "kimberlite-rock"
    },
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    autoplace = {
        control = "volcanic-pipe",
        sharpness = 0.98,
        max_probability = 0.04,
        richness_multiplier = 100,
        richness_multiplier_distance_bonus = 100,
        richness_base = 50000,
        coverage = 0.02,
        peaks = {
            {
                noise_layer = "volcanic-pipe",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3,
                starting_area_weight_optimal = 0,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            }
        }
    },
    stage_counts = {0},
    stages = {
        sheet = {
            filename = "__pyfusionenergy__/graphics/entity/ores/volcanic-pipe.png",
            priority = "extra-high",
            width = 224,
            height = 224,
            frame_count = 1,
            variation_count = 1
        }
    }
}

data:extend {autoplace, noise, resource}
