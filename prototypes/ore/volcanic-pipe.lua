DATA {
    type = "autoplace-control",
    name = "volcanic-pipe",
    richness = true,
    order = "b-e",
    category = "resource"
}

DATA {
    type = "noise-layer",
    name = "volcanic-pipe"
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
            {"kimberlite-rock", 1}
        }
    },
    collision_box = {{-3.5, -3.5}, {3.5, 3.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    autoplace = resource_autoplace.resource_autoplace_settings {
        name = "volcanic-pipe",
        order = "b",
        base_density = 10,
        base_spots_per_km2 = 1.25,
        has_starting_area_placement = false,
        random_spot_size_minimum = 2,
        random_spot_size_maximum = 4,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 2,
        candidate_spot_count = 20
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
