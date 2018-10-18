DATA {
    type = "autoplace-control",
    name = "regolites",
    richness = true,
    order = "b-e",
    category = "resource",
}

DATA {
    type = "noise-layer",
    name = "regolites"
}

ENTITY {
    type = "resource",
    name = "regolites",
    category = "regolite",
    icon = "__pyfusionenergy__/graphics/icons/ores/regolite-resource.png",
	icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 0.917, g = 0.670, b = 0.278},
    highlight = true,
    minimum = 20000,
    normal = 30000,
    maximum = 40000,
    map_grid = false,
    minable = {
        hardness = 2.0,
        -- mining_particle = "regolites-particle",
        mining_time = 4,
        results = {
            {"regolite-rock", 1}
        }
    },
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    autoplace = {
        control = "regolites",
        sharpness = 0.98,
        max_probability = 0.015,
        richness_multiplier = 110,
        richness_multiplier_distance_bonus = 90,
        richness_base = 50000,
        coverage = 0.007,
        peaks = {
            {
                noise_layer = "regolites",
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
            filename = "__pyfusionenergy__/graphics/entity/ores/regolite-resource.png",
            priority = "extra-high",
            width = 240,
            height = 250,
            frame_count = 1,
            variation_count = 1,
            shift = {0.35, -0.2}
        }
    }
}
