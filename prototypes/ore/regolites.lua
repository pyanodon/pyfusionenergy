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
    map_color = {r = 0.917, g = 0.570, b = 0.378},
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
			{type = "item", name = "regolite-rock", amount = 1},
			{type = "item", name = "nexelit-ore", amount = 1, probability = 0.5},
        }
    },
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    autoplace = {
        control = "regolites",
        sharpness = 1.5,
        max_probability = 0.015,
        richness_multiplier = 110,
        richness_multiplier_distance_bonus = 90,
        richness_base = 100000,
        coverage = 0.0007 / 3,
        peaks = {
            {
                noise_layer = "regolites",
                noise_octaves_difference = -1.85,
                noise_persistence = 0.3,
            },
            --no starting area
            {
                influence = -1.0,
                starting_area_weight_optimal = 1,
                starting_area_weight_range = 0,
                starting_area_weight_max_range = 2
            },
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
