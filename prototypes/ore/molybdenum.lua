DATA {
    type = "autoplace-control",
    name = "molybdenum-ore",
    richness = true,
    order = "b-e",
    category = "resource"
}

DATA {
    type = "noise-layer",
    name = "molybdenum-ore"
}

ENTITY {
    type = "resource",
    name = "molybdenum-ore",
    category = "molybdenum",
    icon = "__pyfusionenergy__/graphics/icons/ores/molybdenum.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.294, g = 0.45, b = 0.643},
    highlight = true,
    minimum = 500,
    normal = 1000,
    maximum = 3000,
    minable = {
        hardness = 1,
        -- mining_particle = "molybdenum-ore-particle",
        mining_time = 3,
        results = {
            {"molybdenum-ore", 1}
        }
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "molybdenum-ore",
        sharpness = 1,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 30,
        richness_base = 500,
        coverage = 0.006,
        peaks = {
            {
                noise_layer = "molybdenum-ore",
                noise_octaves_difference = -1.5,
                noise_persistence = 0.3,
                starting_area_weight_optimal = 0,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__pyfusionenergy__/graphics/entity/ores/molybdenum-ore.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__pyfusionenergy__/graphics/entity/ores/hr-molybdenum-ore.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}
